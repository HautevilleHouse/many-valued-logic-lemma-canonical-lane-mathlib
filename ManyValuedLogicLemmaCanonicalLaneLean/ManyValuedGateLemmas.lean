import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.ManyValuedBridgeLemmas

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
