import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean.DnaTopoisomeraseModel

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | TopoisomeraseAdmittedObject dnaMolecule topology linkingNumber supercoilingState cleavedIntermediate religatedProduct =>
    linkingNumber ∧ supercoilingState

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rcases A.object with ⟨_, _, ln, sc, _, _⟩
  exact And.intro ln sc

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse