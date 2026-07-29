import ManyValuedLogicLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure DeductionTheoremPackage {A : AdmissibleClass} where
  formulas : Type u
  deductionRelation : formulas → formulas → Prop
  entailsRelation : formulas → formulas → Prop
  deductionThesis : Prop
  deductionReverse : Prop
  deductionTheoremClosed : deductionThesis ∧ deductionReverse

structure DeductionTheoremEvidence {A : AdmissibleClass}
    (Pkg : DeductionTheoremPackage (A := A)) where
  deductionThesisClosed : Pkg.deductionThesis
  deductionReverseClosed : Pkg.deductionReverse

def DeductionTheoremClosed {A : AdmissibleClass}
    (Pkg : DeductionTheoremPackage (A := A)) : Prop :=
  Pkg.deductionThesis ∧ Pkg.deductionReverse

theorem deduction_theorem_closed_from_evidence
    {A : AdmissibleClass} (Pkg : DeductionTheoremPackage (A := A))
    (E : DeductionTheoremEvidence Pkg) :
    DeductionTheoremClosed Pkg := by
  exact And.intro E.deductionThesisClosed E.deductionReverseClosed

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse