import Lean

/--
Compiled launcher for the proof-carrying query in `Main.lean`.

The generated table imports large certificate data. Running `Main.lean` through
Lean's interpreter keeps the CLI on the real proof-carrying table without asking
Clang to compile those proof modules into the executable.
-/
def main (args : List String) : IO Unit := do
  let build ← IO.Process.output {
    cmd := "lake"
    args := #["-KproofMode=native", "build", "CoveringCodes.Database.GeneratedAPI"]
  }
  if build.exitCode != 0 then
    IO.print build.stdout
    IO.eprint build.stderr
    IO.Process.exit 1

  let out ← IO.Process.output {
    cmd := "lake"
    args := #["-KproofMode=native", "env", "lean", "--run", "Main.lean"] ++ args.toArray
  }
  IO.print out.stdout
  IO.eprint out.stderr
  if out.exitCode != 0 then
    IO.Process.exit 1
