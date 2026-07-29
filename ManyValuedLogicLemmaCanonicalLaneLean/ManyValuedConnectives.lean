import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ManyValuedLogicLemmaCanonicalLaneLean.ManyValuedTruthValues

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure ConnectivePackage (T : TruthValuePackage) where
  conjunction : T.truthValues → T.truthValues → T.truthValues
  disjunction : T.truthValues → T.truthValues → T.truthValues
  implication : T.truthValues → T.truthValues → T.truthValues
  negation : T.truthValues → T.truthValues

structure ConnectiveEvidence {T : TruthValuePackage} (C : ConnectivePackage T) where
  conjunctionClosure : ∀ a b : T.truthValues, C.conjunction a b ∈ T.designated ↔ a ∈ T.designated ∧ b ∈ T.designated
  disjunctionClosure : ∀ a b : T.truthValues, C.disjunction a b ∈ T.designated ↔ a ∈ T.designated ∨ b ∈ T.designated
  implicationDetachment : ∀ a b : T.truthValues, a ∈ T.designated → (C.implication a b) ∈ T.designated → b ∈ T.designated
  negationConsistency : ∀ a : T.truthValues, (C.negation a) ∈ T.designated → a ∉ T.designated

def ConnectiveClosed {T : TruthValuePackage} (C : ConnectivePackage T) : Prop :=
  ∃ (E : ConnectiveEvidence C), True

theorem connective_closed_from_evidence {T : TruthValuePackage} (C : ConnectivePackage T) (E : ConnectiveEvidence C) : ConnectiveClosed C :=
  ⟨E, trivial⟩

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse