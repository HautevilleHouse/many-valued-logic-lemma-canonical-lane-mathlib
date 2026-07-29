import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.LindenbaumAlgebra

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure ManyValuedCompletenessPackage where
  syntacticConsequence : Prop
  semanticConsequence : Prop
  completenessTheorem : syntacticConsequence ↔ semanticConsequence
  compactness : Prop

structure ManyValuedCompletenessEvidence (C : ManyValuedCompletenessPackage) where
  completenessTheoremClosed : C.completenessTheorem
  compactnessClosed : C.compactness

def ManyValuedCompletenessClosed (C : ManyValuedCompletenessPackage) : Prop :=
  C.completenessTheorem ∧ C.compactness

theorem many_valued_completeness_closed_from_evidence (C : ManyValuedCompletenessPackage) (E : ManyValuedCompletenessEvidence C) :
    ManyValuedCompletenessClosed C := by
  exact And.intro E.completenessTheoremClosed E.compactnessClosed

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
