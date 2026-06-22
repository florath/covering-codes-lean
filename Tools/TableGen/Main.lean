import CoveringCodes.Database.BoundTable

open CoveringCodes.Database

def logProgress (msg : String) : IO Unit := do
  IO.println msg
  let out ← IO.getStdout
  out.flush

-- Produce a Lean string literal with " and \ escaped.
def quotedStr (s : String) : String :=
  let body := s.foldl (fun acc c =>
    acc ++ if c == '"' then "\\\"" else if c == '\\' then "\\\\" else c.toString) ""
  "\"" ++ body ++ "\""

-- Serialise an UpperTrace as Lean source text.
-- lengthenFreeN and lengthenDummyN chains are collapsed to a single node.
-- serializeLowerTrace is in the same mutual block because lowerDirectProductLeft/Right
-- contain an UpperTrace subtrace requiring serializeUpperTrace.
mutual

-- Walk a chain of lengthenFreeN nodes, summing the k values.
partial def collectChain (q r acc_k n U_in : Nat)
    (t : UpperTrace q n r U_in) : Nat × String :=
  match t with
  | @UpperTrace.lengthenFreeN _ n₀ _ U₀ k sub =>
      collectChain q r (acc_k + k) n₀ U₀ sub
  | _ => (acc_k, serializeUpperTrace t)

-- Walk a chain of lengthenDummyN nodes, summing the k values.
partial def collectDummyChain (q acc_k n r U : Nat)
    (t : UpperTrace q n r U) : Nat × String :=
  match t with
  | @UpperTrace.lengthenDummyN _ n₀ r₀ _ k _ sub =>
      collectDummyChain q (acc_k + k) n₀ r₀ U sub
  | _ => (acc_k, serializeUpperTrace t)

partial def serializeUpperTrace {q n r U : Nat} : UpperTrace q n r U → String
  | .primitive label _ =>
      s!"(.primitive {quotedStr label} (primitiveUpper_valid {q} {n} {r}))"
  | @UpperTrace.radiusMono _ _ r₀ _ _ _ sub =>
      s!"(.radiusMono (by decide : {r₀} ≤ {r}) {serializeUpperTrace sub})"
  | .puncture _ sub =>
      s!"(.puncture (by decide : 0 < {q}) {serializeUpperTrace sub})"
  | @UpperTrace.alphabetProject _ q₀ _ _ _ _ _ sub =>
      s!"(.alphabetProject (by decide : 0 < {q}) (by decide : {q} ≤ {q₀}) {serializeUpperTrace sub})"
  | @UpperTrace.lengthenFreeN _ n₀ _ U_in k sub =>
      let (total_k, baseSer) := collectChain q r k n₀ U_in sub
      s!"(.lengthenFreeN {total_k} {baseSer})"
  | @UpperTrace.lengthenDummyN _ n₀ r₀ _ k _ sub =>
      let (total_k, baseSer) := collectDummyChain q k n₀ r₀ U sub
      s!"(.lengthenDummyN {total_k} (by decide : 0 < {q}) {baseSer})"
  | @UpperTrace.alphabetExpand q_in _ s₀ _ _ U_in _ _ _ _ sub =>
      s!"(@UpperTrace.alphabetExpand {q_in} {q} {s₀} {n} {r} {U_in} (by decide : 0 < {q_in}) (by decide : 0 < {s₀}) (by decide : {q} ≤ {s₀} * {q_in}) (by decide : 0 < {q}) {serializeUpperTrace sub})"
  | @UpperTrace.directProduct _ n1 n2 r1 r2 U1 U2 tLeft tRight =>
      s!"(@UpperTrace.directProduct {q} {n1} {n2} {r1} {r2} {U1} {U2} {serializeUpperTrace tLeft} {serializeUpperTrace tRight})"
  | @UpperTrace.blockGroup q₀ m₀ N₀ _ U₀ sub =>
      s!"(@UpperTrace.blockGroup {q₀} {m₀} {N₀} {r} {U₀} {serializeUpperTrace sub})"
  | @UpperTrace.blockUngroup _ m₀ N₀ R₀ U₀ sub =>
      s!"(@UpperTrace.blockUngroup {q} {m₀} {N₀} {R₀} {U₀} {serializeUpperTrace sub})"

partial def serializeLowerTrace {q n r L : Nat} : LowerTrace q n r L → String
  | .primitive label _ =>
      s!"(.primitive {quotedStr label} (primitiveLower_valid {q} {n} {r}))"
  | @LowerTrace.radiusBack _ _ _ s₀ _ _ sub =>
      s!"(.radiusBack (by decide : {r} ≤ {s₀}) {serializeLowerTrace sub})"
  | .lengthBack _ sub =>
      s!"(.lengthBack (by decide : 0 < {q}) {serializeLowerTrace sub})"
  | @LowerTrace.alphabetBack a₀ _ _ _ _ _ _ sub =>
      s!"(.alphabetBack (by decide : 0 < {a₀}) (by decide : {a₀} ≤ {q}) {serializeLowerTrace sub})"
  | .dummyBack _ sub =>
      s!"(.dummyBack (by decide : 0 < {q}) {serializeLowerTrace sub})"
  | .dummyBackN k _ sub =>
      s!"(.dummyBackN {k} (by decide : 0 < {q}) {serializeLowerTrace sub})"
  | .lengthenFreeBack _ sub =>
      s!"(.lengthenFreeBack (by decide : 0 < {q}) {serializeLowerTrace sub})"
  | .lengthenFreeBackN k _ sub =>
      s!"(.lengthenFreeBackN {k} (by decide : 0 < {q}) {serializeLowerTrace sub})"
  | @LowerTrace.lowerDirectProductLeft _ n2 r2 _ _ L₀ U2 _ tLarge tRight =>
      s!"(@LowerTrace.lowerDirectProductLeft {q} {n} {n2} {r} {r2} {L₀} {U2} (by decide : 0 < {U2}) {serializeLowerTrace tLarge} {serializeUpperTrace tRight})"
  | @LowerTrace.lowerDirectProductRight _ n1 _ r1 _ L₀ U1 _ tLarge tLeft =>
      s!"(@LowerTrace.lowerDirectProductRight {q} {n1} {n} {r1} {r} {L₀} {U1} (by decide : 0 < {U1}) {serializeLowerTrace tLarge} {serializeUpperTrace tLeft})"
  | @LowerTrace.lowerBlockGroup _ m₀ N₀ _ L₀ sub =>
      s!"(@LowerTrace.lowerBlockGroup {q} {m₀} {N₀} {r} {L₀} {serializeLowerTrace sub})"
  | @LowerTrace.lowerBlockUngroup q₀ m₀ N₀ _ L₀ sub =>
      s!"(@LowerTrace.lowerBlockUngroup {q₀} {m₀} {N₀} {r} {L₀} {serializeLowerTrace sub})"

end

-- Recursive trace constructor counts for statistics reporting.
structure TraceStats where
  lPrimitive           : Nat := 0
  lRadiusBack          : Nat := 0
  lLengthBack          : Nat := 0
  lAlphabetBack        : Nat := 0
  lDummyBack           : Nat := 0
  lDummyBackN          : Nat := 0
  lLengthenFreeBack    : Nat := 0
  lLengthenFreeBackN   : Nat := 0
  lLowerDirectProductLeft : Nat := 0
  lLowerDirectProductRight: Nat := 0
  lLowerBlockGroup     : Nat := 0
  lLowerBlockUngroup   : Nat := 0
  uPrimitive           : Nat := 0
  uRadiusMono          : Nat := 0
  uPuncture            : Nat := 0
  uAlphabetProject     : Nat := 0
  uLengthenFreeN       : Nat := 0
  uLengthenDummyN      : Nat := 0
  uAlphabetExpand      : Nat := 0
  uDirectProduct       : Nat := 0
  uBlockGroup          : Nat := 0
  uBlockUngroup        : Nat := 0

partial def countUpper {q n r U : Nat} (t : UpperTrace q n r U) (acc : TraceStats) : TraceStats :=
  match t with
  | .primitive _ _     => { acc with uPrimitive        := acc.uPrimitive        + 1 }
  | .radiusMono _ sub  => countUpper sub { acc with uRadiusMono       := acc.uRadiusMono       + 1 }
  | .puncture _ sub    => countUpper sub { acc with uPuncture         := acc.uPuncture         + 1 }
  | .alphabetProject _ _ sub => countUpper sub { acc with uAlphabetProject  := acc.uAlphabetProject  + 1 }
  | .lengthenFreeN _ sub     => countUpper sub { acc with uLengthenFreeN    := acc.uLengthenFreeN    + 1 }
  | .lengthenDummyN _ _ sub  => countUpper sub { acc with uLengthenDummyN   := acc.uLengthenDummyN   + 1 }
  | .alphabetExpand _ _ _ _ sub => countUpper sub { acc with uAlphabetExpand  := acc.uAlphabetExpand  + 1 }
  | .directProduct tL tR =>
      countUpper tL (countUpper tR { acc with uDirectProduct := acc.uDirectProduct + 1 })
  | .blockGroup sub    => countUpper sub { acc with uBlockGroup       := acc.uBlockGroup       + 1 }
  | .blockUngroup sub  => countUpper sub { acc with uBlockUngroup     := acc.uBlockUngroup     + 1 }

partial def countLower {q n r L : Nat} (t : LowerTrace q n r L) (acc : TraceStats) : TraceStats :=
  match t with
  | .primitive _ _    => { acc with lPrimitive           := acc.lPrimitive           + 1 }
  | .radiusBack _ sub => countLower sub { acc with lRadiusBack         := acc.lRadiusBack         + 1 }
  | .lengthBack _ sub => countLower sub { acc with lLengthBack         := acc.lLengthBack         + 1 }
  | .alphabetBack _ _ sub => countLower sub { acc with lAlphabetBack   := acc.lAlphabetBack       + 1 }
  | .dummyBack _ sub  => countLower sub { acc with lDummyBack          := acc.lDummyBack          + 1 }
  | .dummyBackN _ _ sub => countLower sub { acc with lDummyBackN       := acc.lDummyBackN         + 1 }
  | .lengthenFreeBack _ sub => countLower sub { acc with lLengthenFreeBack := acc.lLengthenFreeBack + 1 }
  | .lengthenFreeBackN _ _ sub => countLower sub { acc with lLengthenFreeBackN := acc.lLengthenFreeBackN + 1 }
  | .lowerDirectProductLeft _ tLarge tRight =>
      countLower tLarge (countUpper tRight { acc with lLowerDirectProductLeft := acc.lLowerDirectProductLeft + 1 })
  | .lowerDirectProductRight _ tLarge tLeft =>
      countLower tLarge (countUpper tLeft { acc with lLowerDirectProductRight := acc.lLowerDirectProductRight + 1 })
  | .lowerBlockGroup sub  => countLower sub { acc with lLowerBlockGroup  := acc.lLowerBlockGroup  + 1 }
  | .lowerBlockUngroup sub => countLower sub { acc with lLowerBlockUngroup := acc.lLowerBlockUngroup + 1 }

def computeStats (entries : List AnyBoundEntry) : TraceStats :=
  entries.foldl (fun acc e =>
    countLower e.lowerTrace (countUpper e.upperTrace acc)) {}

def printStats (s : TraceStats) : IO Unit := do
  IO.println "Trace constructor counts (recursive, all nodes):"
  IO.println s!"  upper.primitive:          {s.uPrimitive}"
  IO.println s!"  upper.radiusMono:         {s.uRadiusMono}"
  IO.println s!"  upper.puncture:           {s.uPuncture}"
  IO.println s!"  upper.alphabetProject:    {s.uAlphabetProject}"
  IO.println s!"  upper.lengthenFreeN:      {s.uLengthenFreeN}"
  IO.println s!"  upper.lengthenDummyN:     {s.uLengthenDummyN}"
  IO.println s!"  upper.alphabetExpand:     {s.uAlphabetExpand}"
  IO.println s!"  upper.directProduct:      {s.uDirectProduct}"
  IO.println s!"  upper.blockGroup:         {s.uBlockGroup}"
  IO.println s!"  upper.blockUngroup:       {s.uBlockUngroup}"
  IO.println s!"  lower.primitive:          {s.lPrimitive}"
  IO.println s!"  lower.radiusBack:         {s.lRadiusBack}"
  IO.println s!"  lower.lengthBack:         {s.lLengthBack}"
  IO.println s!"  lower.alphabetBack:       {s.lAlphabetBack}"
  IO.println s!"  lower.dummyBack:          {s.lDummyBack}"
  IO.println s!"  lower.dummyBackN:         {s.lDummyBackN}"
  IO.println s!"  lower.lengthenFreeBack:   {s.lLengthenFreeBack}"
  IO.println s!"  lower.lengthenFreeBackN:  {s.lLengthenFreeBackN}"
  IO.println s!"  lower.lowerDirectProductLeft:  {s.lLowerDirectProductLeft}"
  IO.println s!"  lower.lowerDirectProductRight: {s.lLowerDirectProductRight}"
  IO.println s!"  lower.lowerBlockGroup:    {s.lLowerBlockGroup}"
  IO.println s!"  lower.lowerBlockUngroup:  {s.lLowerBlockUngroup}"

-- Phase 9.3: warn if an automatic closure constructor has zero winning traces.
def warnZeroUsage (s : TraceStats) : IO Unit := do
  let automatics : List (String × Nat) := [
    ("upper.radiusMono",       s.uRadiusMono),
    ("upper.puncture",         s.uPuncture),
    ("upper.alphabetProject",  s.uAlphabetProject),
    ("upper.lengthenFreeN",    s.uLengthenFreeN),
    ("upper.lengthenDummyN",   s.uLengthenDummyN),
    ("upper.alphabetExpand",   s.uAlphabetExpand),
    ("upper.blockGroup",       s.uBlockGroup),
    ("upper.blockUngroup",     s.uBlockUngroup),
    ("lower.radiusBack",       s.lRadiusBack),
    ("lower.lengthBack",       s.lLengthBack),
    ("lower.alphabetBack",     s.lAlphabetBack),
    ("lower.dummyBack",        s.lDummyBack),
    ("lower.lengthenFreeBack", s.lLengthenFreeBack),
    ("lower.lowerBlockGroup",  s.lLowerBlockGroup),
    ("lower.lowerBlockUngroup",s.lLowerBlockUngroup),
  ]
  for (name, count) in automatics do
    if count == 0 then
      IO.println s!"Warning: {name} has zero generated winning traces."

def serializeEntry (e : AnyBoundEntry) : String :=
  s!"  \{ key := \{ q := {e.key.q}, n := {e.key.n}, r := {e.key.r} }\n" ++
  s!"    lowerValue := {e.lowerValue}\n" ++
  s!"    upperValue := {e.upperValue}\n" ++
  s!"    lowerTrace := {serializeLowerTrace e.lowerTrace}\n" ++
  s!"    upperTrace := {serializeUpperTrace e.upperTrace} }"

-- Each chunk is written as its own .lean file so the Lean compiler
-- processes them independently, avoiding OOM and heartbeat limits.
def chunkSize : Nat := 250

def chunkDir : String := "CoveringCodes/Database/GeneratedTable"

def chunkModuleBase : String := "CoveringCodes.Database.GeneratedTable"

def writeChunkFile (i : Nat) (chunk : List AnyBoundEntry) : IO Unit := do
  let body := String.intercalate ",\n" (chunk.map serializeEntry)
  let content :=
    "import CoveringCodes.Database.BoundTable\n\n" ++
    "set_option maxRecDepth 4000\n" ++
    "set_option maxHeartbeats 2000000\n\n" ++
    "namespace CoveringCodes.Database\n\n" ++
    s!"-- Auto-generated chunk {i}. Do not edit manually.\n\n" ++
    s!"def precomputedTable_chunk_{i} : Array AnyBoundEntry := #[\n{body}]\n\n" ++
    "end CoveringCodes.Database\n"
  IO.FS.writeFile s!"{chunkDir}/Chunk{i}.lean" content

def removeOldChunkFiles : IO Unit := do
  IO.FS.createDirAll chunkDir
  for entry in ← System.FilePath.readDir chunkDir do
    let name := entry.fileName
    if name.startsWith "Chunk" && name.endsWith ".lean" then
      IO.FS.removeFile entry.path

def runRelaxStage
    (pass maxPasses step totalSteps : Nat)
    (name : String)
    (f : Array AnyBoundEntry → Array AnyBoundEntry)
    (table : Array AnyBoundEntry) :
    IO (Array AnyBoundEntry) := do
  logProgress s!"  Pass {pass}/{maxPasses}, step {step}/{totalSteps}: {name} ..."
  let table := f table
  logProgress s!"  Pass {pass}/{maxPasses}, step {step}/{totalSteps}: {name} done"
  return table

def relaxOnceWithProgress
    (pass maxPasses : Nat)
    (table : Array AnyBoundEntry) :
    IO (Array AnyBoundEntry) := do
  let totalSteps := 16
  let mut table := table
  table ← runRelaxStage pass maxPasses 1 totalSteps "upper radius monotonicity" relaxUpperRadiusOnce table
  table ← runRelaxStage pass maxPasses 2 totalSteps "lower radius back-propagation" relaxLowerRadiusOnce table
  table ← runRelaxStage pass maxPasses 3 totalSteps "upper length puncturing" relaxUpperLengthOnce table
  table ← runRelaxStage pass maxPasses 4 totalSteps "lower length back-propagation" relaxLowerLengthOnce table
  table ← runRelaxStage pass maxPasses 5 totalSteps "upper alphabet projection" relaxUpperAlphabetOnce table
  table ← runRelaxStage pass maxPasses 6 totalSteps "lower alphabet back-propagation" relaxLowerAlphabetOnce table
  table ← runRelaxStage pass maxPasses 7 totalSteps "upper free-coordinate lengthening" relaxUpperLengthenFreeOnce table
  table ← runRelaxStage pass maxPasses 8 totalSteps "upper dummy-coordinate lengthening" relaxUpperLengthenDummyOnce table
  table ← runRelaxStage pass maxPasses 9 totalSteps "lower dummy-coordinate back-propagation" relaxLowerDummyBackOnce table
  table ← runRelaxStage pass maxPasses 10 totalSteps "lower free-coordinate back-propagation" relaxLowerLengthenFreeBackOnce table
  table ← runRelaxStage pass maxPasses 11 totalSteps "upper alphabet expansion" relaxUpperAlphabetExpandOnce table
  table ← runRelaxStage pass maxPasses 12 totalSteps "upper block grouping" relaxUpperBlockGroupOnce table
  table ← runRelaxStage pass maxPasses 13 totalSteps "lower block-group back-propagation" relaxLowerBlockGroupOnce table
  table ← runRelaxStage pass maxPasses 14 totalSteps "upper block ungrouping" relaxUpperBlockUngroupOnce table
  table ← runRelaxStage pass maxPasses 15 totalSteps "lower block-ungroup back-propagation" relaxLowerBlockUngroupOnce table
  table ← runRelaxStage pass maxPasses 16 totalSteps "upper direct product" relaxUpperDirectProductOnce table
  return table

def main : IO Unit := do
  logProgress s!"Computing bound table (up to {maxPasses} passes) ..."
  let mut table := initialTable
  logProgress s!"Initialized {table.size} table entries."
  -- Track sum of all upper and lower values to detect convergence.
  let mut prevUpperSum := table.foldl (fun acc e => acc + e.upperValue) 0
  let mut prevLowerSum := table.foldl (fun acc e => acc + e.lowerValue) 0
  let mut doneAtPass := maxPasses
  for i in [:maxPasses] do
    table ← relaxOnceWithProgress (i + 1) maxPasses table
    let newUpperSum := table.foldl (fun acc e => acc + e.upperValue) 0
    let newLowerSum := table.foldl (fun acc e => acc + e.lowerValue) 0
    if newUpperSum == prevUpperSum && newLowerSum == prevLowerSum then
      logProgress s!"  Pass {i + 1}/{maxPasses}: converged - no changes. Stopping early."
      doneAtPass := i + 1
      break
    prevUpperSum := newUpperSum
    prevLowerSum := newLowerSum
    logProgress s!"  Pass {i + 1}/{maxPasses}: updated bounds; continuing."
  logProgress s!"Done: {table.size} entries after {doneAtPass} passes."
  let entries := table.toList
  let stats := computeStats entries
  printStats stats
  warnZeroUsage stats
  -- Split into chunks
  let mut chunks : Array (List AnyBoundEntry) := #[]
  let mut remaining := entries
  while !remaining.isEmpty do
    chunks := chunks.push (remaining.take chunkSize)
    remaining := remaining.drop chunkSize
  let numChunks := chunks.size
  logProgress s!"Writing {numChunks} chunk files to {chunkDir}/ ..."
  removeOldChunkFiles
  for i in [:numChunks] do
    writeChunkFile i chunks[i]!
    if (i + 1) % 10 == 0 then
      logProgress s!"  wrote chunk {i + 1}/{numChunks}"
  -- Write main GeneratedTable.lean that imports all chunks and combines them
  let imports := (List.range numChunks).map (fun i =>
    s!"import {chunkModuleBase}.Chunk{i}") |> String.intercalate "\n"
  let chunkNames := (List.range numChunks).map (fun i =>
    s!"precomputedTable_chunk_{i}")
  let concatExpr := String.intercalate " ++\n  " chunkNames
  -- Phase 9.2: closure settings header in GeneratedTable.lean
  let closureHeader :=
    "-- Closure settings:\n" ++
    s!"--   computeQMax = {computeQMax}\n" ++
    s!"--   computeNMax = {computeNMax}\n" ++
    s!"--   computeRMax = {computeRMax}\n" ++
    s!"--   maxPasses   = {maxPasses}\n" ++
    s!"--   doneAtPass  = {doneAtPass}\n" ++
    s!"--   chunkSize   = {chunkSize}\n\n"
  let mainContent :=
    imports ++ "\n\n" ++
    "namespace CoveringCodes.Database\n\n" ++
    "-- Auto-generated by `lake -KproofMode=native exe table_gen`. Do not edit manually.\n" ++
    "-- Re-run `lake -KproofMode=native exe table_gen` to regenerate after source changes.\n" ++
    s!"-- {entries.length} entries in {numChunks} chunks of ≤{chunkSize}.\n\n" ++
    closureHeader ++
    "def precomputedTable : Array AnyBoundEntry :=\n  " ++
    concatExpr ++ "\n\n" ++
    "def lookupPrecomputed? (q n r : Nat) : Option (CertifiedBoundEntry q n r) :=\n" ++
    "  lookupEntry? precomputedTable q n r\n\n" ++
    "def lookupPrecomputed (q n r : Nat) : CertifiedBoundEntry q n r :=\n" ++
    "  match lookupPrecomputed? q n r with\n" ++
    "  | some e => e\n" ++
    "  | none =>\n" ++
    "    -- Outside the precomputed range, fall back to primitive bounds only.\n" ++
    "    -- This fallback intentionally does not run the bounded closure engine.\n" ++
    "    { lower      := primitiveLower q n r\n" ++
    "      upper      := primitiveUpper q n r\n" ++
    "      lowerTrace := .primitive (primitiveLowerName q n r) (primitiveLower_valid q n r)\n" ++
    "      upperTrace := .primitive (primitiveUpperName q n r) (primitiveUpper_valid q n r) }\n\n" ++
    "end CoveringCodes.Database\n"
  IO.FS.writeFile "CoveringCodes/Database/GeneratedTable.lean" mainContent
  logProgress s!"Written GeneratedTable.lean and {numChunks} chunk files."
  logProgress "Next step: run `scripts/build-proof-mode.sh native covering_codes` to compile the precomputed table."
