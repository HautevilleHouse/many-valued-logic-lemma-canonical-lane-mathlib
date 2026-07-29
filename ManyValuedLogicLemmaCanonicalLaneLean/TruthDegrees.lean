import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure TruthDegree where
  value : ℝ
  order : Nat
  finite : Prop

def truthDegreeMap (f : ℝ → ℝ) (t : TruthDegree) : TruthDegree :=
  { value := f t.value, order := t.order, finite := t.finite }

theorem truth_degree_map_identity (t : TruthDegree) : truthDegreeMap id t = t := by
  rfl

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
