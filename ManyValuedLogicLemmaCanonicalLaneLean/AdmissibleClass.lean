import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ManyValuedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ManyValuedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse