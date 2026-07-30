import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean.DnaTopologyFoundation

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseAction (D : DnaTopologyPackage) where
  initialStrand : DnaStrand
  finalStrand : DnaStrand
  deltaLk : ℤ
  mechanismAdmissible : Prop
  LkChangeEquation : Prop  -- finalLk = initialLk + deltaLk

structure TopoisomeraseMechanismPackage {D : DnaTopologyPackage}
    (T : TopoisomeraseAction D) where
  strandSeparation : Prop
  strandPassage : Prop
  religation : Prop

structure TopoisomeraseMechanismEvidence {D : DnaTopologyPackage}
    {T : TopoisomeraseAction D} (M : TopoisomeraseMechanismPackage T) where
  strandSeparationClosed : M.strandSeparation
  strandPassageClosed : M.strandPassage
  religationClosed : M.religation

def TopoisomeraseMechanismClosed {D : DnaTopologyPackage}
    {T : TopoisomeraseAction D} (M : TopoisomeraseMechanismPackage T) : Prop :=
  M.strandSeparation ∧ M.strandPassage ∧ M.religation

theorem topoisomerase_mechanism_closed_from_evidence
    {D : DnaTopologyPackage} {T : TopoisomeraseAction D}
    (M : TopoisomeraseMechanismPackage T)
    (E : TopoisomeraseMechanismEvidence M) :
    TopoisomeraseMechanismClosed M := by
  exact And.intro E.strandSeparationClosed
    (And.intro E.strandPassageClosed E.religationClosed)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse