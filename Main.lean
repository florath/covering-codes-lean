-- The CLI uses the generated closure table so that printed bounds match the precomputed database.
import CoveringCodes.Database.GeneratedAPI

open CoveringCodes.Database

def usage : String :=
  "Usage: covering_codes <q> <n> <r>\n" ++
  "  Prints certified lower and upper bounds for the q-ary covering number K_q(n,r).\n" ++
  "  All arguments must be non-negative integers."

def formatSteps (steps : List String) : String :=
  String.intercalate "\n" (steps.mapIdx (fun i s => s!"  {i + 1}) {s}"))

def main (args : List String) : IO Unit := do
  match args.mapM String.toNat? with
  | some [q, n, r] =>
    let entry := lookupPrecomputed q n r
    let b     := entry.toBestBounds
    IO.println s!"K_{q}({n},{r}) ∈ [{b.lower}, {b.upper}]"
    IO.println "lower:"
    IO.println (formatSteps entry.lowerTrace.render)
    IO.println "upper:"
    IO.println (formatSteps entry.upperTrace.render)
    if b.lower = b.upper then
      IO.println s!"(exact: K_{q}({n},{r}) = {b.lower})"
  | some _ =>
    IO.eprintln s!"Error: expected exactly 3 arguments.\n{usage}"
    IO.Process.exit 1
  | none =>
    IO.eprintln s!"Error: arguments must be non-negative integers.\n{usage}"
    IO.Process.exit 1
