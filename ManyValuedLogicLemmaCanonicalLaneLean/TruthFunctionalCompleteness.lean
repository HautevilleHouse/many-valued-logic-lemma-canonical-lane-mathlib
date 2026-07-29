import ManyValuedLogicLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure TruthFunctionalCompletenessPackage {A : AdmissibleClass} where
  formulaSet : Type u
  valuationSpace : A.object.truthValues → A.object.truthValues
  completenessCondition : Prop
  soundnessCondition : Prop
  expressiveAdequacy : Prop
  functionalCompleteness : completenessCondition ∧ soundnessCondition ∧ expressiveAdequacy

structure TruthFunctionalCompletenessEvidence {A : AdmissibleClass}
    (Pkg : TruthFunctionalCompletenessPackage (A := A)) where
  completenessClosed : Pkg.completenessCondition
  soundnessClosed : Pkg.soundnessCondition
  expressiveAdequacyClosed : Pkg.expressiveAdequacy

def TruthFunctionalCompletenessClosed {A : AdmissibleClass}
    (Pkg : TruthFunctionalCompletenessPackage (A := A)) : Prop :=
  Pkg.completenessCondition ∧ Pkg.soundnessCondition ∧ Pkg.expressiveAdequacy

theorem truth_functional_completeness_closed_from_evidence
    {A : AdmissibleClass} (Pkg : TruthFunctionalCompletenessPackage (A := A))
    (E : TruthFunctionalCompletenessEvidence Pkg) :
    TruthFunctionalCompletenessClosed Pkg := by
  exact And.intro E.completenessClosed (And.intro E.soundnessClosed E.expressiveAdequacyClosed)

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse