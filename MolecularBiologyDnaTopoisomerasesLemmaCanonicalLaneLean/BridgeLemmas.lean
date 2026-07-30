import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DnaTopologyClosed ({
    strand := A.object.strand
    LkEquationTwPlusWr := A.object.topologicalEffectAdmissible
  } : DnaTopologyPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  exact A.object.conclusion

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse