import CoveringCodes.Database.GeneratedAPI

open CoveringCodes.Database

def outputPath : String :=
  "reference-data/lean/non_mixed_covering_codes.csv"

def csvHeader : String :=
  "q,n,r,lower_bound,upper_bound,lower_bound_reference,upper_bound_reference"

def dedupePreservingOrder (refs : List String) : List String :=
  let rec go (seen outRev : List String) : List String → List String
    | [] => outRev.reverse
    | key :: rest =>
        if seen.contains key then
          go seen outRev rest
        else
          go (key :: seen) (key :: outRev) rest
  go [] [] refs

def referenceCell (refs : List String) : String :=
  String.intercalate ";" (dedupePreservingOrder refs)

def csvNeedsEscaping (s : String) : Bool :=
  s.any (fun c => c == ',' || c == '"' || c == '\n' || c == '\r')

def csvEscape (s : String) : String :=
  if csvNeedsEscaping s then
    let escaped := s.foldl (fun acc c =>
      acc ++ if c == '"' then "\"\"" else c.toString) ""
    "\"" ++ escaped ++ "\""
  else
    s

def csvRow (q n r : Nat) : String :=
  let entry := lookupPrecomputed q n r
  let fields : List String := [
    toString q,
    toString n,
    toString r,
    toString entry.lower,
    toString entry.upper,
    referenceCell entry.lowerTrace.references,
    referenceCell entry.upperTrace.references,
  ]
  String.intercalate "," (fields.map csvEscape)

def csvRows : List String := Id.run do
  let mut rows : List String := []
  for q in [2:computeQMax + 1] do
    for n in [1:computeNMax + 1] do
      for r in [1:computeRMax + 1] do
        rows := csvRow q n r :: rows
  return rows.reverse

def csvContent : String :=
  String.intercalate "\n" (csvHeader :: csvRows) ++ "\n"

def main : IO Unit := do
  IO.FS.createDirAll "reference-data/lean"
  IO.FS.writeFile outputPath csvContent
  IO.println s!"Wrote {csvRows.length} rows to {outputPath}"
