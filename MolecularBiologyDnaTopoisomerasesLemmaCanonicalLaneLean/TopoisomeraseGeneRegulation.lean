import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseGeneRegulationPackage where
  transcriptionFactor : Type u
  promoterRegion : Type v
  geneExpressionRegulation : Prop
  dnaTopologyEffect : Prop
  stressResponse : Prop

structure TopoisomeraseGeneRegulationEvidence (G : TopoisomeraseGeneRegulationPackage) where
  geneExpressionRegulationClosed : G.geneExpressionRegulation
  dnaTopologyEffectClosed : G.dnaTopologyEffect
  stressResponseClosed : G.stressResponse

def TopoisomeraseGeneRegulationClosed (G : TopoisomeraseGeneRegulationPackage) : Prop :=
  G.geneExpressionRegulation ∧ G.dnaTopologyEffect ∧ G.stressResponse

theorem topoisomerase_gene_regulation_closed_from_evidence (G : TopoisomeraseGeneRegulationPackage) (E : TopoisomeraseGeneRegulationEvidence G) :
    TopoisomeraseGeneRegulationClosed G := by
  exact And.intro E.geneExpressionRegulationClosed (And.intro E.dnaTopologyEffectClosed E.stressResponseClosed)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse