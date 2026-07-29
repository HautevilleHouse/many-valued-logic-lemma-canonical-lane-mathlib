import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure ManyValuedAdmittedObject where
  truthValues : Type
  connectiveSignature : List (String × Nat)
  deductionRelation : Prop
  consequenceRelation : Prop

def ManyValuedWitnessClosed (O : ManyValuedAdmittedObject) : Prop :=
  O.deductionRelation ∧ O.consequenceRelation

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
