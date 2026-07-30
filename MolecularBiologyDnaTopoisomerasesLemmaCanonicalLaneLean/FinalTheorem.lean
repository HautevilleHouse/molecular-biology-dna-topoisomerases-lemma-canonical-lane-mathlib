import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

def ConstrainedTopoisomeraseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topoisomerase_endgame (A : AdmissibleClass) :
    ConstrainedTopoisomeraseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse