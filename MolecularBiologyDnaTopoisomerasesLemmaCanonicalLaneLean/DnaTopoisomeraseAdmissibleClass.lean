import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DnaTopoisomeraseAdmittedObject where
  topologyChangeRecorded : Prop
  supercoilingRelaxed : Prop
  knotLinkingClassified : Prop
  conclusion : topologyChangeRecorded ∧ supercoilingRelaxed ∧ knotLinkingClassified

structure DnaTopoisomeraseAdmissibleClass where
  object : DnaTopoisomeraseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DnaTopoisomeraseAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse
