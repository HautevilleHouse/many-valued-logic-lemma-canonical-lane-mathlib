import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure TruthValueAlgebra where
  domain : Type u
  meet : domain → domain → domain
  join : domain → domain → domain
  negation : domain → domain
  order : domain → domain → Prop

structure MVLogicPackage where
  algebra : TruthValueAlgebra
  completeness : Prop
  consistency : Prop

structure MVLogicEvidence (P : MVLogicPackage) where
  completenessClosed : P.completeness
  consistencyClosed : P.consistency

def MVLogicClosed (P : MVLogicPackage) : Prop :=
  P.completeness ∧ P.consistency

theorem mv_logic_closed_from_evidence (P : MVLogicPackage) (E : MVLogicEvidence P) :
    MVLogicClosed P := by
  exact And.intro E.completenessClosed E.consistencyClosed

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
