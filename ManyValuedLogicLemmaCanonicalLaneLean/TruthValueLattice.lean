import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManyValuedLogicLemmaCanonicalLaneLean

structure TruthValueLattice where
  carrier : Type
  le : carrier → carrier → Prop
  top : carrier
  bot : carrier
  meet : carrier → carrier → carrier
  join : carrier → carrier → carrier
  le_refl : ∀ a : carrier, le a a
  le_trans : ∀ a b c : carrier, le a b → le b c → le a c
  le_antisymm : ∀ a b : carrier, le a b → le b a → a = b
  meet_le_left : ∀ a b : carrier, le (meet a b) a
  meet_le_right : ∀ a b : carrier, le (meet a b) b
  le_meet : ∀ a b c : carrier, le a b → le a c → le a (meet b c)
  le_join_left : ∀ a b : carrier, le a (join a b)
  le_join_right : ∀ a b : carrier, le b (join a b)
  join_le : ∀ a b c : carrier, le a c → le b c → le (join a b) c
  top_greatest : ∀ a : carrier, le a top
  bot_least : ∀ a : carrier, le bot a

end ManyValuedLogicLemmaCanonicalLaneLean
end HautevilleHouse