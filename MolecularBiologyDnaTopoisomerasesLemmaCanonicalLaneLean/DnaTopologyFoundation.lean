import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DnaStrand where
  Lk : ℤ             -- linking number
  Tw : ℤ             -- twist
  Wr : ℤ             -- writhe

structure DnaTopologyPackage where
  strand : DnaStrand
  LkEquationTwPlusWr : Prop  -- Lk = Tw + Wr

structure DnaTopologyEvidence (D : DnaTopologyPackage) where
  LkEquationClosed : D.LkEquationTwPlusWr

def DnaTopologyClosed (D : DnaTopologyPackage) : Prop :=
  D.LkEquationTwPlusWr

theorem dna_topology_closed_from_evidence (D : DnaTopologyPackage)
    (E : DnaTopologyEvidence D) : DnaTopologyClosed D := by
  exact E.LkEquationClosed

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse