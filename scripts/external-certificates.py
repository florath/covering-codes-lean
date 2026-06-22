#!/usr/bin/env python3
"""Manage large external certificate bundles.

The manifest is intentionally explicit: every extracted file has a byte size and
SHA256 digest, and every archive has its own digest.  This lets CI jobs download
only the bundles they need, enforce a storage budget, build the Lean targets,
and then remove the raw data while keeping compiled `.olean` files.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys
import tarfile
import tempfile
import urllib.parse
import urllib.request
from pathlib import Path
from typing import Any


REPO = Path(__file__).resolve().parents[1]
DEFAULT_MANIFEST = REPO / "data" / "external-certificates" / "manifest.json"
HASH_CHUNK_SIZE = 1024 * 1024


class CertError(Exception):
    pass


def repo_path(path: str | Path) -> Path:
    path = Path(path)
    if path.is_absolute():
        return path
    return REPO / path


def rel(path: Path) -> str:
    try:
        return path.relative_to(REPO).as_posix()
    except ValueError:
        return path.as_posix()


def load_manifest(path: Path) -> dict[str, Any]:
    with path.open("r", encoding="utf-8") as handle:
        manifest = json.load(handle)
    if manifest.get("schema_version") != 1:
        raise CertError(f"unsupported manifest schema: {manifest.get('schema_version')}")
    ids = [bundle.get("id") for bundle in manifest.get("bundles", [])]
    if len(ids) != len(set(ids)):
        raise CertError("manifest contains duplicate bundle ids")
    return manifest


def bundle_map(manifest: dict[str, Any]) -> dict[str, dict[str, Any]]:
    return {bundle["id"]: bundle for bundle in manifest.get("bundles", [])}


def selected_bundles(args: argparse.Namespace, manifest: dict[str, Any]) -> list[dict[str, Any]]:
    bundles = bundle_map(manifest)
    ids = getattr(args, "bundle_ids", None) or []
    if getattr(args, "all", False) or not ids:
        return list(bundles.values())
    missing = [bundle_id for bundle_id in ids if bundle_id not in bundles]
    if missing:
        raise CertError("unknown bundle id(s): " + ", ".join(missing))
    return [bundles[bundle_id] for bundle_id in ids]


def parse_size(text: str) -> int:
    value = text.strip()
    units = {
        "": 1,
        "b": 1,
        "k": 1000,
        "kb": 1000,
        "m": 1000**2,
        "mb": 1000**2,
        "g": 1000**3,
        "gb": 1000**3,
        "t": 1000**4,
        "tb": 1000**4,
        "ki": 1024,
        "kib": 1024,
        "mi": 1024**2,
        "mib": 1024**2,
        "gi": 1024**3,
        "gib": 1024**3,
        "ti": 1024**4,
        "tib": 1024**4,
    }
    split = len(value)
    while split > 0 and value[split - 1].isalpha():
        split -= 1
    number = value[:split]
    suffix = value[split:].lower()
    if suffix not in units:
        raise argparse.ArgumentTypeError(f"unknown size suffix in {text!r}")
    try:
        return int(float(number) * units[suffix])
    except ValueError as exc:
        raise argparse.ArgumentTypeError(f"invalid size {text!r}") from exc


def human_size(size: int | None) -> str:
    if size is None:
        return "unknown"
    units = ["B", "KiB", "MiB", "GiB", "TiB"]
    value = float(size)
    unit = units[0]
    for unit in units:
        if value < 1024 or unit == units[-1]:
            break
        value /= 1024
    if unit == "B":
        return f"{int(value)} B"
    return f"{value:.2f} {unit}"


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        while True:
            chunk = handle.read(HASH_CHUNK_SIZE)
            if not chunk:
                break
            digest.update(chunk)
    return digest.hexdigest()


def file_ok(path: Path, expected_bytes: int | None, expected_sha: str | None) -> bool:
    if not path.is_file():
        return False
    if expected_bytes is not None and path.stat().st_size != expected_bytes:
        return False
    if expected_sha is not None and sha256_file(path) != expected_sha:
        return False
    return True


def archive_path(manifest: dict[str, Any], bundle: dict[str, Any]) -> Path:
    download = bundle.get("download", {})
    local_path = download.get("local_path")
    if local_path:
        return repo_path(local_path)
    cache_dir = repo_path(manifest.get("default_cache_dir", "data/external-certificates/cache"))
    return cache_dir / bundle["archive"]["filename"]


def expected_archive_bytes(bundle: dict[str, Any]) -> int | None:
    return bundle.get("archive", {}).get("bytes")


def expected_archive_sha(bundle: dict[str, Any]) -> str | None:
    return bundle.get("archive", {}).get("sha256")


def expected_storage(bundle: dict[str, Any]) -> int:
    archive_bytes = expected_archive_bytes(bundle) or 0
    unpacked_bytes = bundle.get("unpacked", {}).get("bytes") or sum(
        file.get("bytes", 0) for file in bundle.get("files", [])
    )
    generated_bytes = sum(file.get("bytes", 0) for file in bundle.get("generated_files", []))
    return archive_bytes + unpacked_bytes + generated_bytes


def enforce_storage_limit(bundles: list[dict[str, Any]], limit: int | None) -> None:
    if limit is None:
        return
    total = sum(expected_storage(bundle) for bundle in bundles)
    if total > limit:
        raise CertError(
            f"selected bundles need {human_size(total)}, exceeding limit {human_size(limit)}"
        )


def verify_archive(bundle: dict[str, Any], path: Path) -> None:
    expected_bytes = expected_archive_bytes(bundle)
    expected_sha = expected_archive_sha(bundle)
    if expected_bytes is None or expected_sha is None:
        raise CertError(f"{bundle['id']} has no archive bytes/sha256 in the manifest")
    if not path.is_file():
        raise CertError(f"missing archive for {bundle['id']}: {rel(path)}")
    actual_bytes = path.stat().st_size
    if actual_bytes != expected_bytes:
        raise CertError(
            f"{bundle['id']} archive size mismatch: expected {expected_bytes}, got {actual_bytes}"
        )
    actual_sha = sha256_file(path)
    if actual_sha != expected_sha:
        raise CertError(f"{bundle['id']} archive sha256 mismatch: {actual_sha}")


def url_entries(bundle: dict[str, Any]) -> list[str]:
    urls = []
    for entry in bundle.get("download", {}).get("urls", []):
        if isinstance(entry, str):
            urls.append(entry)
        elif isinstance(entry, dict) and entry.get("url"):
            urls.append(entry["url"])
    return urls


def copy_or_download(url: str, destination: Path) -> None:
    parsed = urllib.parse.urlparse(url)
    destination.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile(
        prefix=destination.name + ".", suffix=".tmp", dir=destination.parent, delete=False
    ) as tmp_handle:
        tmp_path = Path(tmp_handle.name)
        try:
            if parsed.scheme in ("http", "https"):
                with urllib.request.urlopen(url) as response:
                    shutil.copyfileobj(response, tmp_handle)
            elif parsed.scheme == "file":
                source = Path(urllib.request.url2pathname(parsed.path))
                with source.open("rb") as source_handle:
                    shutil.copyfileobj(source_handle, tmp_handle)
            elif parsed.scheme == "":
                source = repo_path(url)
                with source.open("rb") as source_handle:
                    shutil.copyfileobj(source_handle, tmp_handle)
            else:
                raise CertError(f"unsupported URL scheme in {url!r}")
        except Exception:
            tmp_path.unlink(missing_ok=True)
            raise
    tmp_path.replace(destination)
    destination.chmod(0o644)


def fetch_bundle(manifest: dict[str, Any], bundle: dict[str, Any], force: bool = False) -> Path:
    path = archive_path(manifest, bundle)
    if path.is_file() and not force:
        verify_archive(bundle, path)
        print(f"archive ok: {bundle['id']} -> {rel(path)}")
        return path

    urls = url_entries(bundle)
    if not urls:
        if path.is_file():
            verify_archive(bundle, path)
            return path
        raise CertError(
            f"{bundle['id']} has no local archive at {rel(path)} and no download URLs"
        )

    last_error: Exception | None = None
    for url in urls:
        try:
            print(f"downloading {bundle['id']} from {url}")
            copy_or_download(url, path)
            verify_archive(bundle, path)
            return path
        except Exception as exc:
            last_error = exc
            print(f"failed: {exc}", file=sys.stderr)
    raise CertError(f"could not fetch {bundle['id']}: {last_error}")


def verify_files(bundle: dict[str, Any], quiet: bool = False) -> bool:
    ok = True
    for file_info in bundle.get("files", []):
        path = repo_path(file_info["path"])
        file_is_ok = file_ok(path, file_info.get("bytes"), file_info.get("sha256"))
        ok = ok and file_is_ok
        if not quiet:
            status = "ok" if file_is_ok else "missing/mismatch"
            print(f"{status:16} {bundle['id']} {file_info['path']}")
    return ok


def verify_generated_files(bundle: dict[str, Any], quiet: bool = False) -> bool:
    ok = True
    for file_info in bundle.get("generated_files", []):
        path = repo_path(file_info["path"])
        file_is_ok = file_ok(path, file_info.get("bytes"), file_info.get("sha256"))
        ok = ok and file_is_ok
        if not quiet:
            status = "ok" if file_is_ok else "missing/mismatch"
            print(f"{status:16} {bundle['id']} {file_info['path']} (generated)")
    return ok


def materialized_ok(bundle: dict[str, Any]) -> bool:
    return verify_files(bundle, quiet=True) and verify_generated_files(bundle, quiet=True)


def read_tail_values(path: Path) -> list[int]:
    values: list[int] = []
    with path.open("r", encoding="utf-8") as handle:
        for line_no, line in enumerate(handle, start=1):
            line = line.rstrip("\n")
            if not line:
                continue
            try:
                value = int(line)
            except ValueError as exc:
                raise CertError(f"cannot parse tail value on line {line_no}: {line}") from exc
            if value < 0 or value >= 729:
                raise CertError(f"tail value on line {line_no} is out of range: {value}")
            values.append(value)
    if len(values) != 531441:
        raise CertError(f"expected 531441 tail values, got {len(values)}")
    return values


def nat_array_literal(values: list[int], indent: str = "  ", per_line: int = 24) -> str:
    lines = ["#["]
    for start in range(0, len(values), per_line):
        chunk = values[start : start + per_line]
        suffix = "," if start + per_line < len(values) else ""
        lines.append(indent + ", ".join(str(value) for value in chunk) + suffix)
    lines.append("]")
    return "\n".join(lines)


def render_q9_n9_r5_tail_data(values: list[int]) -> str:
    lines = [
        "import Mathlib.Tactic",
        "",
        "/-!",
        "# Generated tail table for K_9(9,5)",
        "",
        "This file is generated by `scripts/external-certificates.py materialize` from",
        "`data/K_9_9_5/tail/tail-values.txt`.  Do not edit it by hand.",
        "-/",
        "",
        "namespace CoveringCodes",
        "namespace Database",
        "",
    ]
    for chunk in range(81):
        start = chunk * 6561
        lines.append(
            f"@[noinline] def knownBoundQ9N9R5TailChunk{chunk} : Array Nat := "
            + nat_array_literal(values[start : start + 6561])
        )
        lines.append("")
    lines.append("@[noinline] def knownBoundQ9N9R5TailChunk (chunk : Nat) : Array Nat :=")
    for chunk in range(81):
        if chunk == 0:
            lines.append(f"  if chunk = {chunk} then knownBoundQ9N9R5TailChunk{chunk}")
        else:
            lines.append(f"  else if chunk = {chunk} then knownBoundQ9N9R5TailChunk{chunk}")
    lines.extend(["  else #[]", "", "end Database", "end CoveringCodes", ""])
    return "\n".join(lines)


def generate_file(bundle: dict[str, Any], file_info: dict[str, Any], force: bool = False) -> None:
    target = repo_path(file_info["path"])
    if not force and file_ok(target, file_info.get("bytes"), file_info.get("sha256")):
        print(f"generated ok: {bundle['id']} -> {rel(target)}")
        return

    kind = file_info.get("kind")
    if kind == "q9-n9-r5-tail-data-lean":
        source = repo_path(file_info["source"])
        values = read_tail_values(source)
        content = render_q9_n9_r5_tail_data(values)
    else:
        raise CertError(f"unsupported generated file kind for {bundle['id']}: {kind}")

    target.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile(
        "w", encoding="utf-8", prefix=target.name + ".", suffix=".tmp",
        dir=target.parent, delete=False
    ) as tmp_handle:
        tmp_path = Path(tmp_handle.name)
        try:
            tmp_handle.write(content)
        except Exception:
            tmp_path.unlink(missing_ok=True)
            raise
    tmp_path.replace(target)
    target.chmod(0o644)
    if not file_ok(target, file_info.get("bytes"), file_info.get("sha256")):
        raise CertError(f"generated file failed verification: {file_info['path']}")
    print(f"generated: {bundle['id']} -> {rel(target)}")


def generate_bundle_files(bundle: dict[str, Any], force: bool = False) -> None:
    for file_info in bundle.get("generated_files", []):
        generate_file(bundle, file_info, force=force)


def validate_tar_members(bundle: dict[str, Any], tar: tarfile.TarFile) -> dict[str, tarfile.TarInfo]:
    expected = {file_info["path"] for file_info in bundle.get("files", [])}
    regular_members = {member.name: member for member in tar.getmembers() if member.isfile()}
    missing = sorted(expected - set(regular_members))
    unexpected = sorted(set(regular_members) - expected)
    if missing:
        raise CertError(f"{bundle['id']} archive is missing members: {', '.join(missing)}")
    if unexpected:
        raise CertError(f"{bundle['id']} archive has unexpected members: {', '.join(unexpected)}")
    for member_name in regular_members:
        path = Path(member_name)
        if path.is_absolute() or ".." in path.parts:
            raise CertError(f"{bundle['id']} archive has unsafe member path: {member_name}")
    return regular_members


def materialize_bundle(manifest: dict[str, Any], bundle: dict[str, Any], force: bool = False) -> None:
    if not force and materialized_ok(bundle):
        print(f"files ok: {bundle['id']}")
        return

    if force or not verify_files(bundle, quiet=True):
        archive = fetch_bundle(manifest, bundle, force=False)
        mode = "r:xz" if bundle.get("archive", {}).get("format") == "tar.xz" else "r:*"
        with tarfile.open(archive, mode) as tar:
            members = validate_tar_members(bundle, tar)
            for file_info in bundle.get("files", []):
                target = repo_path(file_info["path"])
                if not force and file_ok(target, file_info.get("bytes"), file_info.get("sha256")):
                    continue
                member = members[file_info["path"]]
                extracted = tar.extractfile(member)
                if extracted is None:
                    raise CertError(f"cannot extract {member.name}")
                target.parent.mkdir(parents=True, exist_ok=True)
                with tempfile.NamedTemporaryFile(
                    prefix=target.name + ".", suffix=".tmp", dir=target.parent, delete=False
                ) as tmp_handle:
                    tmp_path = Path(tmp_handle.name)
                    try:
                        shutil.copyfileobj(extracted, tmp_handle)
                    except Exception:
                        tmp_path.unlink(missing_ok=True)
                        raise
                tmp_path.replace(target)

    if not verify_files(bundle, quiet=True):
        raise CertError(f"{bundle['id']} extracted files failed verification")
    generate_bundle_files(bundle, force=force)
    if not verify_generated_files(bundle, quiet=True):
        raise CertError(f"{bundle['id']} generated files failed verification")
    print(f"materialized: {bundle['id']}")


def pack_bundle(manifest: dict[str, Any], bundle: dict[str, Any], force: bool = False) -> Path:
    path = archive_path(manifest, bundle)
    if path.exists() and not force:
        raise CertError(f"archive already exists: {rel(path)}; pass --force to overwrite")
    path.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile(
        prefix=path.name + ".", suffix=".tmp", dir=path.parent, delete=False
    ) as tmp_handle:
        tmp_path = Path(tmp_handle.name)
    try:
        with tarfile.open(tmp_path, "w:xz") as tar:
            for file_info in sorted(bundle.get("files", []), key=lambda item: item["path"]):
                source = repo_path(file_info["path"])
                if not file_ok(source, file_info.get("bytes"), file_info.get("sha256")):
                    raise CertError(f"source file failed verification: {file_info['path']}")
                info = tar.gettarinfo(source, arcname=file_info["path"])
                info.uid = 0
                info.gid = 0
                info.uname = ""
                info.gname = ""
                info.mtime = 0
                info.mode = 0o644
                with source.open("rb") as source_handle:
                    tar.addfile(info, source_handle)
        tmp_path.replace(path)
    except Exception:
        tmp_path.unlink(missing_ok=True)
        raise

    path.chmod(0o644)
    size = path.stat().st_size
    digest = sha256_file(path)
    print(f"packed: {bundle['id']} -> {rel(path)}")
    print(f"archive bytes: {size}")
    print(f"archive sha256: {digest}")
    expected_bytes = expected_archive_bytes(bundle)
    expected_sha = expected_archive_sha(bundle)
    if expected_bytes is not None and expected_bytes != size:
        raise CertError(f"packed archive size differs from manifest: {expected_bytes} != {size}")
    if expected_sha is not None and expected_sha != digest:
        raise CertError(f"packed archive sha256 differs from manifest: {expected_sha} != {digest}")
    return path


def remove_empty_dirs(root: Path) -> None:
    current = root
    while current != REPO and current.is_dir():
        try:
            current.rmdir()
        except OSError:
            break
        current = current.parent


def clean_bundle(manifest: dict[str, Any], bundle: dict[str, Any], extracted: bool, archive: bool) -> None:
    if extracted:
        for file_info in bundle.get("files", []):
            path = repo_path(file_info["path"])
            path.unlink(missing_ok=True)
        for file_info in bundle.get("generated_files", []):
            if file_info.get("clean_with_extracted", False):
                path = repo_path(file_info["path"])
                path.unlink(missing_ok=True)
        root = repo_path(bundle.get("unpacked", {}).get("root", ""))
        if root != REPO:
            remove_empty_dirs(root)
        print(f"removed extracted files: {bundle['id']}")
    if archive:
        path = archive_path(manifest, bundle)
        path.unlink(missing_ok=True)
        print(f"removed archive: {bundle['id']} -> {rel(path)}")


def default_proof_mode(manifest: dict[str, Any]) -> str:
    mode = manifest.get("build", {}).get("default_proof_mode", "kernel")
    if mode not in ("kernel", "native"):
        raise CertError(f"unsupported default proof mode: {mode}")
    return mode


def build_driver(manifest: dict[str, Any], args: argparse.Namespace) -> str:
    return args.build_driver or manifest.get("build", {}).get("driver", "scripts/build-proof-mode.sh")


def build_command(manifest: dict[str, Any], args: argparse.Namespace, targets: list[str]) -> list[str]:
    proof_mode = args.proof_mode or default_proof_mode(manifest)
    if proof_mode not in ("kernel", "native"):
        raise CertError(f"unsupported proof mode: {proof_mode}")
    return [build_driver(manifest, args), proof_mode, *targets]


def bundle_targets(bundles: list[dict[str, Any]]) -> list[str]:
    return sorted({target for bundle in bundles for target in bundle.get("lean_targets", [])})


def plan_batches(
    bundles: list[dict[str, Any]], storage_limit: int | None
) -> list[list[dict[str, Any]]]:
    batches: list[list[dict[str, Any]]] = []
    current: list[dict[str, Any]] = []
    current_size = 0
    for bundle in sorted(bundles, key=expected_storage, reverse=True):
        size = expected_storage(bundle)
        if storage_limit is not None and size > storage_limit:
            raise CertError(
                f"{bundle['id']} needs {human_size(size)}, exceeding limit {human_size(storage_limit)}"
            )
        if current and storage_limit is not None and current_size + size > storage_limit:
            batches.append(current)
            current = []
            current_size = 0
        current.append(bundle)
        current_size += size
    if current:
        batches.append(current)
    return batches


def command_list(args: argparse.Namespace) -> None:
    manifest = load_manifest(args.manifest)
    for bundle in selected_bundles(args, manifest):
        archive = archive_path(manifest, bundle)
        files_ok = verify_files(bundle, quiet=True)
        generated_ok = verify_generated_files(bundle, quiet=True)
        archive_status = "present" if archive.is_file() else "missing"
        if archive.is_file() and expected_archive_sha(bundle):
            archive_status = "ok" if file_ok(archive, expected_archive_bytes(bundle), expected_archive_sha(bundle)) else "mismatch"
        print(
            f"{bundle['id']}: archive={archive_status}, files={'ok' if files_ok else 'missing/mismatch'}, "
            f"generated={'ok' if generated_ok else 'missing/mismatch'}, "
            f"archive_size={human_size(expected_archive_bytes(bundle))}, "
            f"unpacked_size={human_size(bundle.get('unpacked', {}).get('bytes'))}"
        )


def command_pack(args: argparse.Namespace) -> None:
    manifest = load_manifest(args.manifest)
    for bundle in selected_bundles(args, manifest):
        pack_bundle(manifest, bundle, force=args.force)


def command_fetch(args: argparse.Namespace) -> None:
    manifest = load_manifest(args.manifest)
    bundles = selected_bundles(args, manifest)
    enforce_storage_limit(bundles, args.storage_limit)
    for bundle in bundles:
        fetch_bundle(manifest, bundle, force=args.force)


def command_materialize(args: argparse.Namespace) -> None:
    manifest = load_manifest(args.manifest)
    bundles = selected_bundles(args, manifest)
    enforce_storage_limit(bundles, args.storage_limit)
    for bundle in bundles:
        materialize_bundle(manifest, bundle, force=args.force)


def command_verify(args: argparse.Namespace) -> None:
    manifest = load_manifest(args.manifest)
    ok = True
    for bundle in selected_bundles(args, manifest):
        if args.archive:
            verify_archive(bundle, archive_path(manifest, bundle))
            print(f"archive ok: {bundle['id']}")
        if args.files:
            ok = verify_files(bundle) and verify_generated_files(bundle) and ok
    if not ok:
        raise CertError("one or more extracted files failed verification")


def command_clean(args: argparse.Namespace) -> None:
    if not args.yes:
        raise CertError("clean requires --yes")
    if not args.extracted and not args.archive:
        raise CertError("clean requires --extracted and/or --archive")
    manifest = load_manifest(args.manifest)
    for bundle in selected_bundles(args, manifest):
        clean_bundle(manifest, bundle, extracted=args.extracted, archive=args.archive)


def command_plan(args: argparse.Namespace) -> None:
    manifest = load_manifest(args.manifest)
    bundles = selected_bundles(args, manifest)
    batches = plan_batches(bundles, args.storage_limit)

    if args.json:
        print(
            json.dumps(
                [
                    {
                        "batch": index + 1,
                        "storage_bytes": sum(expected_storage(bundle) for bundle in batch),
                        "bundle_ids": [bundle["id"] for bundle in batch],
                        "lean_targets": bundle_targets(batch),
                        "build_command": build_command(manifest, args, bundle_targets(batch)),
                    }
                    for index, batch in enumerate(batches)
                ],
                indent=2,
            )
        )
    else:
        for index, batch in enumerate(batches, start=1):
            size = sum(expected_storage(bundle) for bundle in batch)
            ids = " ".join(bundle["id"] for bundle in batch)
            targets = bundle_targets(batch)
            print(f"batch {index}: {human_size(size)} :: {ids}")
            if targets:
                print("  " + " ".join(build_command(manifest, args, targets)))


def command_check(args: argparse.Namespace) -> None:
    manifest = load_manifest(args.manifest)
    bundles = selected_bundles(args, manifest)
    batches = plan_batches(bundles, args.storage_limit)
    if args.targets and len(batches) > 1:
        raise CertError("--target cannot be combined with multi-batch --storage-limit checks")
    if args.storage_limit is not None and len(batches) > 1 and not args.clean_extracted:
        raise CertError("multi-batch --storage-limit checks require --clean-extracted")

    for index, batch in enumerate(batches, start=1):
        if len(batches) > 1:
            print(
                f"==> external certificate batch {index}/{len(batches)}: "
                + " ".join(bundle["id"] for bundle in batch),
                flush=True,
            )
        for bundle in batch:
            materialize_bundle(manifest, bundle, force=args.force)
        targets = args.targets or bundle_targets(batch)
        if not targets:
            raise CertError("no Lean targets specified")
        command = build_command(manifest, args, targets)
        print("+ " + " ".join(command), flush=True)
        if not args.dry_run:
            subprocess.run(command, cwd=REPO, check=True)
        if args.clean_extracted:
            for bundle in batch:
                clean_bundle(manifest, bundle, extracted=True, archive=False)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    subparsers = parser.add_subparsers(dest="command", required=True)

    def add_selection(subparser: argparse.ArgumentParser) -> None:
        subparser.add_argument("bundle_ids", nargs="*")
        subparser.add_argument("--all", action="store_true", help="select every bundle")

    def add_build_options(subparser: argparse.ArgumentParser) -> None:
        subparser.add_argument(
            "--proof-mode",
            choices=("kernel", "native"),
            help="Lean proof mode for build steps; default comes from the manifest",
        )
        subparser.add_argument(
            "--build-driver",
            help="build wrapper used for kernel/native modes",
        )

    list_parser = subparsers.add_parser("list", help="show bundle status")
    add_selection(list_parser)
    list_parser.set_defaults(func=command_list)

    pack_parser = subparsers.add_parser("pack", help="create local archive(s) from verified files")
    add_selection(pack_parser)
    pack_parser.add_argument("--force", action="store_true")
    pack_parser.set_defaults(func=command_pack)

    fetch_parser = subparsers.add_parser("fetch", help="download/copy and verify archive(s)")
    add_selection(fetch_parser)
    fetch_parser.add_argument("--force", action="store_true")
    fetch_parser.add_argument("--storage-limit", type=parse_size)
    fetch_parser.set_defaults(func=command_fetch)

    materialize_parser = subparsers.add_parser("materialize", help="fetch and extract bundle files")
    add_selection(materialize_parser)
    materialize_parser.add_argument("--force", action="store_true")
    materialize_parser.add_argument("--storage-limit", type=parse_size)
    materialize_parser.set_defaults(func=command_materialize)

    verify_parser = subparsers.add_parser("verify", help="verify archives and/or extracted files")
    add_selection(verify_parser)
    verify_parser.add_argument("--archive", action="store_true")
    verify_parser.add_argument("--files", action="store_true")
    verify_parser.set_defaults(func=command_verify)

    clean_parser = subparsers.add_parser("clean", help="remove local archives and/or extracted files")
    add_selection(clean_parser)
    clean_parser.add_argument("--extracted", action="store_true")
    clean_parser.add_argument("--archive", action="store_true")
    clean_parser.add_argument("--yes", action="store_true")
    clean_parser.set_defaults(func=command_clean)

    plan_parser = subparsers.add_parser("plan", help="group selected bundles under a storage limit")
    add_selection(plan_parser)
    add_build_options(plan_parser)
    plan_parser.add_argument("--storage-limit", type=parse_size)
    plan_parser.add_argument("--json", action="store_true")
    plan_parser.set_defaults(func=command_plan)

    check_parser = subparsers.add_parser("check", help="materialize, lake build, optionally clean")
    add_selection(check_parser)
    add_build_options(check_parser)
    check_parser.add_argument("--force", action="store_true")
    check_parser.add_argument("--storage-limit", type=parse_size)
    check_parser.add_argument("--clean-extracted", action="store_true")
    check_parser.add_argument("--dry-run", action="store_true", help="print the build command without running it")
    check_parser.add_argument("--target", dest="targets", action="append", default=[])
    check_parser.set_defaults(func=command_check)

    return parser


def main() -> int:
    parser = build_parser()
    args = parser.parse_args()
    if args.command == "verify" and not args.archive and not args.files:
        args.archive = True
        args.files = True
    try:
        args.func(args)
    except CertError as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1
    except subprocess.CalledProcessError as exc:
        return exc.returncode
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
