import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure TruthValuePackage where
  truthValues : Type
  designated : Set truthValues
  order : truthValues → truthValues → Prop
  topElement : truthValues
  bottomElement : truthValues
  topDesignated : designated topElement
  bottomNotDesignated : bottomElement ∉ designated

structure TruthValueEvidence (T : TruthValuePackage) where
  orderReflexive : ∀ a : T.truthValues, T.order a a
  orderTransitive : ∀ a b c : T.truthValues, T.order a b → T.order b c → T.order a c
  orderAntisymmetric : ∀ a b : T.truthValues, T.order a b → T.order b a → a = b
  topIsMax : ∀ a : T.truthValues, T.order a T.topElement
  bottomIsMin : ∀ a : T.truthValues, T.order T.bottomElement a

def TruthValueClosed (T : TruthValuePackage) : Prop :=
  ∃ (E : TruthValueEvidence T), True

theorem truth_value_closed_from_evidence (T : TruthValuePackage) (E : TruthValueEvidence T) : TruthValueClosed T :=
  ⟨E, trivial⟩

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse