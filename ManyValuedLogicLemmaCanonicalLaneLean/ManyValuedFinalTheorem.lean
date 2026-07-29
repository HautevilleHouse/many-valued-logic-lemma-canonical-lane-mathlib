import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.ManyValuedGateLemmas

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

def ConstrainedManyValuedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_many_valued_endgame (A : AdmissibleClass) :
    ConstrainedManyValuedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
