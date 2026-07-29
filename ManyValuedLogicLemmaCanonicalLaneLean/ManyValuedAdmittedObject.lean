import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure ManyValuedSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ManyValuedAlgebra where
  carrier : Type
  operations : List (String × (List carrier → carrier))
  axioms : List Prop

structure ManyValuedAdmittedObject where
  space : ManyValuedSpace
  algebra : ManyValuedAlgebra
  manyValuedLemma : Prop
  conclusion : manyValuedLemma

def ManyValuedWitnessClosed (O : ManyValuedAdmittedObject) : Prop :=
  O.manyValuedLemma

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse