import CoveringCodes.SDP.GijswijtPolak2025.BinaryReducedSDP
import CoveringCodes.SDP.GijswijtPolak2025.QaryReducedSDP
import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryLengthOne
import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryLengthTwo
import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryLengthThree
import CoveringCodes.SDP.GijswijtPolak2025.Generated.TernaryLengthOne
import CoveringCodes.SDP.GijswijtPolak2025.BinaryK2_13_1SideConstraints

/-!
# Closed Gijswijt--Polak SDP lower bounds

This file is reserved for named theorems of type `QaryKLower q n r L` proved
from rational SDP certificates.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- First closed Gijswijt--Polak reduced-SDP lower-bound instance. -/
theorem gp2025_binary_length_one_zero_radius_lower :
    QaryKLower 2 1 0 2 := by
  exact theorem_4_9_binary_reduced_sdp_lower_bound
    (sphereLambda_valid 2 1 0)
    binaryLengthOneReducedDualCertificate

/-- Second closed Gijswijt--Polak reduced-SDP lower-bound instance. -/
theorem gp2025_binary_length_two_zero_radius_lower :
    QaryKLower 2 2 0 4 := by
  exact theorem_4_9_binary_reduced_sdp_lower_bound
    (sphereLambda_valid 2 2 0)
    binaryLengthTwoReducedDualCertificate

/-- Third closed Gijswijt--Polak reduced-SDP lower-bound instance. -/
theorem gp2025_binary_length_three_zero_radius_lower :
    QaryKLower 2 3 0 8 := by
  exact theorem_4_9_binary_reduced_sdp_lower_bound
    (sphereLambda_valid 2 3 0)
    binaryLengthThreeReducedDualCertificate

/-- First closed ternary Gijswijt--Polak reduced-SDP lower-bound instance. -/
theorem gp2025_ternary_length_one_zero_radius_lower :
    QaryKLower 3 1 0 3 := by
  exact theorem_4_18_qary_reduced_sdp_lower_bound
    (by norm_num : 3 <= 3)
    (sphereLambda_valid 3 1 0)
    ternaryLengthOneReducedDualCertificate

/-- Closed Gijswijt--Polak Table 1 certificate for `K_2(13,1) >= 607`. -/
theorem gp2025_binary_K2_13_1_lower :
    QaryKLower 2 13 1 607 := by
  exact binaryK2_13_1_lower_of_codeCellSideConstraints
    binaryK2_13_1_codeCellSideConstraints

end GijswijtPolak2025
end SDP
end CoveringCodes
