import CoveringCodes.CoveringNumber

namespace CoveringCodes
namespace Database

/-- An explicit covering code witnessing `QaryKUpper q n r U`. -/
structure ExplicitQaryUpper (q n r U : Nat) where
  code    : Finset (QaryWord q n)
  card_le : code.card ≤ U
  covers  : CoversFinset code r

namespace ExplicitQaryUpper

theorem toUpper (E : ExplicitQaryUpper q n r U) :
    QaryKUpper q n r U :=
  ⟨E.code, E.card_le, E.covers⟩

end ExplicitQaryUpper

end Database
end CoveringCodes
