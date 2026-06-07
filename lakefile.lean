import Lake

open System Lake DSL

def parseNativeDecideConfig? : String -> Option Bool
  | "true" => some true
  | "1" => some true
  | "yes" => some true
  | "native" => some true
  | "native_decide" => some true
  | "native-decide" => some true
  | "false" => some false
  | "0" => some false
  | "no" => some false
  | "kernel" => some false
  | "decide" => some false
  | "kernel_decide" => some false
  | "kernel-decide" => some false
  | _ => none

def parseNativeDecideConfig (key value : String) : Bool :=
  match parseNativeDecideConfig? value with
  | some useNative => useNative
  | none =>
      panic! s!"invalid Lake option -K{key}={value}; expected native/decide or true/false"

def configuredNativeDecide : Bool :=
  match get_config? proofMode with
  | some mode => parseNativeDecideConfig "proofMode" mode
  | none =>
      match get_config? nativeDecide with
      | some mode => parseNativeDecideConfig "nativeDecide" mode
      | none => false

def coveringCodesLeanOptions : Array LeanOption :=
  #[{ name := `weak.coveringCodes.useNativeDecide, value := configuredNativeDecide }]

package CoveringCodes where
  version := v!"0.1.0"
  leanOptions := coveringCodesLeanOptions

require mathlib from git "https://github.com/leanprover-community/mathlib4"@"d9694e37437f9a5cb6f81f8b25c4c754b398e213"

lean_lib CoveringCodes

lean_exe covering_codes where root := `Main

lean_exe table_gen where root := `Tools.TableGen.Main

lean_exe reference_data_dump where root := `Tools.ReferenceDataDump.Main
