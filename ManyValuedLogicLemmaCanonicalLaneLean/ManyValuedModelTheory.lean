import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.ManyValuedTruthValues

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure ModelPackage (T : TruthValuePackage) where
  domain : Type
  valuation : (domain → T.truthValues) → T.truthValues
  interpretation : (domain → T.truthValues) → (domain → T.truthValues) → T.truthValues

structure ModelEvidence {T : TruthValuePackage} (M : ModelPackage T) where
  valuationDesignated : ∀ f : M.domain → T.truthValues, M.valuation f ∈ T.designated ↔ ∀ x : M.domain, f x ∈ T.designated
  interpretationPreservesImplication : ∀ f g : M.domain → T.truthValues, M.interpretation f g ∈ T.designated ↔ (M.valuation f ∈ T.designated → M.valuation g ∈ T.designated)

def ModelClosed {T : TruthValuePackage} (M : ModelPackage T) : Prop :=
  ∃ (E : ModelEvidence M), True

theorem model_closed_from_evidence {T : TruthValuePackage} (M : ModelPackage T) (E : ModelEvidence M) : ModelClosed M :=
  ⟨E, trivial⟩

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse