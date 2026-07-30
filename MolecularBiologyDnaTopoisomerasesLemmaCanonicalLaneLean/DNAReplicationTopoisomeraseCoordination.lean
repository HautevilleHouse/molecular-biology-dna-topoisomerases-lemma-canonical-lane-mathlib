import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DNAReplicationTopoisomeraseCoordinationPackage where
  replicationFork : Type u
  topoisomeraseRelief : Prop
  forkProgression : Prop
  sisterChromatidSeparation : Prop
  genomeStability : Prop

structure DNAReplicationTopoisomeraseCoordinationEvidence (R : DNAReplicationTopoisomeraseCoordinationPackage) where
  topoisomeraseReliefClosed : R.topoisomeraseRelief
  forkProgressionClosed : R.forkProgression
  sisterChromatidSeparationClosed : R.sisterChromatidSeparation
  genomeStabilityClosed : R.genomeStability

def DNAReplicationTopoisomeraseCoordinationClosed (R : DNAReplicationTopoisomeraseCoordinationPackage) : Prop :=
  R.topoisomeraseRelief ∧ R.forkProgression ∧ R.sisterChromatidSeparation ∧ R.genomeStability

theorem dna_replication_topoisomerase_coordination_closed_from_evidence (R : DNAReplicationTopoisomeraseCoordinationPackage) (E : DNAReplicationTopoisomeraseCoordinationEvidence R) :
    DNAReplicationTopoisomeraseCoordinationClosed R := by
  exact And.intro E.topoisomeraseReliefClosed (And.intro E.forkProgressionClosed (And.intro E.sisterChromatidSeparationClosed E.genomeStabilityClosed))

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse