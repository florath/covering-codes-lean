import CoveringCodes.Relations
import CoveringCodes.Database.Trace
import CoveringCodes.Database.BoundTable

namespace CoveringCodes.Database

/-
Relation coverage status lives in `RELATION_COVERAGE.md`, which is the
authoritative theorem-by-theorem audit.

This module imports the relation theorem layer, trace constructors, and bounded
closure implementation so the coverage marker is checked in the database
namespace.

High-level status:
- Automatic closure rules: 15, implemented by `BoundTable.relaxOnce`.
- Trace-only rules: direct-product traces; automatic closure is intentionally
  disabled or absent.
- Manual explicit-code helpers: shortening, hole filling, colored product, and
  witness-dependent concatenation.

Keep detailed per-rule status in `RELATION_COVERAGE.md` to avoid duplicated
stale lists here.
-/

def relationCoverageDocumented : Bool := true

end CoveringCodes.Database
