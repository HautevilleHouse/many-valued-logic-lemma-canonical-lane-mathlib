import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.ManyValuedLogicAdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure FiniteValuedPackage where
  valueSet : Finset ℕ
  connectives : List (String × (List ℕ → ℕ))
  truthTables : Prop
  completeness : Prop

structure FiniteValuedEvidence (P : FiniteValuedPackage) where
  truthTablesClosed : P.truthTables
  completenessClosed : P.completeness

def FiniteValuedClosed (P : FiniteValuedPackage) : Prop :=
  P.truthTables ∧ P.completeness

theorem finite_valued_closed_from_evidence (P : FiniteValuedPackage) (E : FiniteValuedEvidence P) :
    FiniteValuedClosed P := by
  exact And.intro E.truthTablesClosed E.completenessClosed

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
