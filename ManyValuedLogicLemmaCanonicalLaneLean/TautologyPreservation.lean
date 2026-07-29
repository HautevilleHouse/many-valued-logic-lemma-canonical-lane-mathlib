import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure TautologyPreservationPackage where
  designatedPreservedUnderDetachment : Prop
  designatedPreservedUnderSubstitution : Prop
  tautologySetClosed : Prop

structure TautologyPreservationEvidence (P : TautologyPreservationPackage) where
  designatedPreservedUnderDetachmentClosed : P.designatedPreservedUnderDetachment
  designatedPreservedUnderSubstitutionClosed : P.designatedPreservedUnderSubstitution
  tautologySetClosedClosed : P.tautologySetClosed

def TautologyPreservationClosed (P : TautologyPreservationPackage) : Prop :=
  P.designatedPreservedUnderDetachment ∧ P.designatedPreservedUnderSubstitution ∧ P.tautologySetClosed

theorem tautology_preservation_closed_from_evidence (P : TautologyPreservationPackage) (E : TautologyPreservationEvidence P) :
    TautologyPreservationClosed P := by
  exact And.intro E.designatedPreservedUnderDetachmentClosed
    (And.intro E.designatedPreservedUnderSubstitutionClosed E.tautologySetClosedClosed)

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse
