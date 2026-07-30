import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseInhibitorInteractionPackage where
  inhibitorMolecule : Type u
  enzymeTarget : Type v
  bindingInhibition : Prop
  cleavageComplexStabilization : Prop
  dnaDamageInduction : Prop

structure TopoisomeraseInhibitorInteractionEvidence (I : TopoisomeraseInhibitorInteractionPackage) where
  bindingInhibitionClosed : I.bindingInhibition
  cleavageComplexStabilizationClosed : I.cleavageComplexStabilization
  dnaDamageInductionClosed : I.dnaDamageInduction

def TopoisomeraseInhibitorInteractionClosed (I : TopoisomeraseInhibitorInteractionPackage) : Prop :=
  I.bindingInhibition ∧ I.cleavageComplexStabilization ∧ I.dnaDamageInduction

theorem topoisomerase_inhibitor_interaction_closed_from_evidence (I : TopoisomeraseInhibitorInteractionPackage) (E : TopoisomeraseInhibitorInteractionEvidence I) :
    TopoisomeraseInhibitorInteractionClosed I := by
  exact And.intro E.bindingInhibitionClosed (And.intro E.cleavageComplexStabilizationClosed E.dnaDamageInductionClosed)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse