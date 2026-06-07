import Lean.Elab.Tactic.Decide

/-!
# Switchable finite proof mode

The `covering_decide` tactic is intended for expensive finite checks where
ordinary `decide` is the reproducible/default proof and `native_decide` is
useful for daily development or measurement.  Use `covering_decide +kernel` to
preserve Lean's `decide +kernel` backend while still allowing the global native
mode switch.
-/

namespace CoveringCodes
namespace Database

register_option coveringCodes.useNativeDecide : Bool := {
  defValue := false
  descr := "Use native_decide instead of decide in covering_decide proof leaves."
}

open Lean Elab Tactic

syntax "covering_decide" : tactic
syntax "covering_decide" "+" ident : tactic

private def runCoveringDecide (useRevert : Bool) (forceKernel : Bool) : TacticM Unit := do
  let native := (← getOptions).getBool `coveringCodes.useNativeDecide
  let cfg : Parser.Tactic.DecideConfig := {
    native
    kernel := forceKernel && !native
    «revert» := useRevert
  }
  evalDecideCore `covering_decide cfg

elab_rules : tactic
  | `(tactic| covering_decide) =>
      runCoveringDecide (useRevert := false) (forceKernel := false)
  | `(tactic| covering_decide + $mode:ident) =>
      match mode.getId with
      | `revert => runCoveringDecide (useRevert := true) (forceKernel := false)
      | `kernel => runCoveringDecide (useRevert := false) (forceKernel := true)
      | _ => throwUnsupportedSyntax

end Database
end CoveringCodes
