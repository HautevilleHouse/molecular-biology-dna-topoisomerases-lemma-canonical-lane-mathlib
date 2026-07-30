import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DNASupercoilingRegulationPackage where
  linkingNumber : Type u
  superhelicalDensity : Type v
  topoisomeraseIAction : Prop
  topoisomeraseIIAction : Prop
  steadyStateSupercoiling : Prop

structure DNASupercoilingRegulationEvidence (D : DNASupercoilingRegulationPackage) where
  topoisomeraseIActionClosed : D.topoisomeraseIAction
  topoisomeraseIIActionClosed : D.topoisomeraseIIAction
  steadyStateSupercoilingClosed : D.steadyStateSupercoiling

def DNASupercoilingRegulationClosed (D : DNASupercoilingRegulationPackage) : Prop :=
  D.topoisomeraseIAction ∧ D.topoisomeraseIIAction ∧ D.steadyStateSupercoiling

theorem dna_supercoiling_regulation_closed_from_evidence (D : DNASupercoilingRegulationPackage) (E : DNASupercoilingRegulationEvidence D) :
    DNASupercoilingRegulationClosed D := by
  exact And.intro E.topoisomeraseIActionClosed (And.intro E.topoisomeraseIIActionClosed E.steadyStateSupercoilingClosed)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse