import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.ManyValuedConnectives

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure AxiomPackage {T : TruthValuePackage} (C : ConnectivePackage T) where
  axioms : List (T.truthValues)
  ruleSet : List (List (T.truthValues) × T.truthValues)

structure AxiomEvidence {T : TruthValuePackage} {C : ConnectivePackage T} (A : AxiomPackage C) where
  axiomsDesignated : ∀ a ∈ A.axioms, a ∈ T.designated
  rulePreservation : ∀ (premises, conclusion) ∈ A.ruleSet, (∀ p ∈ premises, p ∈ T.designated) → conclusion ∈ T.designated
  soundness : ∀ φ : T.truthValues, φ ∈ T.designated → (φ ∈ A.axioms ∨ ∃ (premises, conclusion) ∈ A.ruleSet, φ = conclusion ∧ ∀ p ∈ premises, p ∈ T.designated)

def AxiomClosed {T : TruthValuePackage} {C : ConnectivePackage T} (A : AxiomPackage C) : Prop :=
  ∃ (E : AxiomEvidence A), True

theorem axiom_closed_from_evidence {T : TruthValuePackage} {C : ConnectivePackage T} (A : AxiomPackage C) (E : AxiomEvidence A) : AxiomClosed A :=
  ⟨E, trivial⟩

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse