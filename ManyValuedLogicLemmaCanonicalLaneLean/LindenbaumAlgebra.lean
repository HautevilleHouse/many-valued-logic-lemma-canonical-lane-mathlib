import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.FiniteValuedLogic

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure LindenbaumAlgebraPackage where
  formulaAlgebra : Type u
  equivalenceRelation : formulaAlgebra → formulaAlgebra → Prop
  congruenceProperty : Prop
  lindenbaumCompactness : Prop

structure LindenbaumAlgebraEvidence (L : LindenbaumAlgebraPackage) where
  congruencePropertyClosed : L.congruenceProperty
  lindenbaumCompactnessClosed : L.lindenbaumCompactness

def LindenbaumAlgebraClosed (L : LindenbaumAlgebraPackage) : Prop :=
  L.congruenceProperty ∧ L.lindenbaumCompactness

theorem lindenbaum_algebra_closed_from_evidence (L : LindenbaumAlgebraPackage) (E : LindenbaumAlgebraEvidence L) :
    LindenbaumAlgebraClosed L := by
  exact And.intro E.congruencePropertyClosed E.lindenbaumCompactnessClosed

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
