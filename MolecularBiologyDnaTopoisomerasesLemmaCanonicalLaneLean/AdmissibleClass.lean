import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DnaTopoisomeraseAdmittedObject where
  strand : DnaStrand
  topologicalEffectAdmissible : Prop
  conclusion : topologicalEffectAdmissible

structure AdmissibleClass where
  object : DnaTopoisomeraseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DnaTopologyClosed ({
    strand := A.object.strand
    LkEquationTwPlusWr := A.object.topologicalEffectAdmissible
  } : DnaTopologyPackage) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse