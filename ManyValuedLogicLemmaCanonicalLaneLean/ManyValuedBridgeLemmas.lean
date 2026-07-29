import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.ManyValuedLogicAdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ManyValuedWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
