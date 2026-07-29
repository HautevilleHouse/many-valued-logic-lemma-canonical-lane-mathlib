import ManyValuedLogicLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure FiniteValuedCompletenessPackage {A : AdmissibleClass} where
  truthValueCount : ℕ
  completenessCondition : Prop
  compactnessCondition : Prop
  finiteValuedClosed : completenessCondition ∧ compactnessCondition

structure FiniteValuedCompletenessEvidence {A : AdmissibleClass}
    (Pkg : FiniteValuedCompletenessPackage (A := A)) where
  completenessClosed : Pkg.completenessCondition
  compactnessClosed : Pkg.compactnessCondition

def FiniteValuedCompletenessClosed {A : AdmissibleClass}
    (Pkg : FiniteValuedCompletenessPackage (A := A)) : Prop :=
  Pkg.completenessCondition ∧ Pkg.compactnessCondition

theorem finite_valued_completeness_closed_from_evidence
    {A : AdmissibleClass} (Pkg : FiniteValuedCompletenessPackage (A := A))
    (E : FiniteValuedCompletenessEvidence Pkg) :
    FiniteValuedCompletenessClosed Pkg := by
  exact And.intro E.completenessClosed E.compactnessClosed

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse