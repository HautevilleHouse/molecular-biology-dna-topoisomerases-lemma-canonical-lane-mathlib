import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DNATopologyRecognition where
  supercoilRecognition : Prop
  knotRecognition : Prop
  catenaneRecognition : Prop
  recognitionFidelity : ℝ
  allRecognized : supercoilRecognition ∧ knotRecognition ∧ catenaneRecognition ∧ recognitionFidelity > 0

def RecognitionClosed (R : DNATopologyRecognition) : Prop :=
  R.allRecognized

theorem recognition_closed (R : DNATopologyRecognition) : RecognitionClosed R :=
  R.allRecognized

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse