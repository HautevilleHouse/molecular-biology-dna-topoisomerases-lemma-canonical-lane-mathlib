import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean.TopoisomeraseMechanism

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure CleavageReligationEvent where
  cleavageSite : String
  transientBreakType : String  -- "single" or "double"
  religationFidelity : Prop

structure CleavageReligationPackage {D : DnaTopologyPackage}
    {T : TopoisomeraseAction D}
    {M : TopoisomeraseMechanismPackage T} (C : CleavageReligationEvent) where
  nucleophilicAttack : Prop
  covalentIntermediate : Prop
  religationComplete : Prop
  dnaLigationClosed : Prop

structure CleavageReligationEvidence {D : DnaTopologyPackage}
    {T : TopoisomeraseAction D}
    {M : TopoisomeraseMechanismPackage T}
    {C : CleavageReligationEvent}
    (CR : CleavageReligationPackage C) where
  nucleophilicAttackClosed : CR.nucleophilicAttack
  covalentIntermediateClosed : CR.covalentIntermediate
  religationCompleteClosed : CR.religationComplete
  dnaLigationClosed : CR.dnaLigationClosed

def CleavageReligationClosed {D : DnaTopologyPackage}
    {T : TopoisomeraseAction D}
    {M : TopoisomeraseMechanismPackage T}
    {C : CleavageReligationEvent}
    (CR : CleavageReligationPackage C) : Prop :=
  CR.nucleophilicAttack ∧ CR.covalentIntermediate ∧
  CR.religationComplete ∧ CR.dnaLigationClosed

theorem cleavage_religation_closed_from_evidence
    {D : DnaTopologyPackage} {T : TopoisomeraseAction D}
    {M : TopoisomeraseMechanismPackage T}
    {C : CleavageReligationEvent}
    (CR : CleavageReligationPackage C)
    (E : CleavageReligationEvidence CR) :
    CleavageReligationClosed CR := by
  exact And.intro E.nucleophilicAttackClosed
    (And.intro E.covalentIntermediateClosed
      (And.intro E.religationCompleteClosed E.dnaLigationClosed))

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse