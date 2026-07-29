import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TruthDegree.finite A.object ∧ A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.finite A.endpointSatisfied

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
