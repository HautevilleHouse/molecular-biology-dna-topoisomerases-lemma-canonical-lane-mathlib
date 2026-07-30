import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseAdmittedObject where
  dnaMolecule : Type u
  topology : TopologicalSpace dnaMolecule
  linkingNumber : Prop
  supercoilingState : Prop
  cleavedIntermediate : Prop
  religatedProduct : Prop

structure TopoisomerasePackage where
  targetSite : Type u
  dnaStructure : Type v
  enzymeComplex : Type w
  strandPassage : Prop
  topoisomeraseI : Prop
  topoisomeraseII : Prop
  atpRequirement : Prop
  catalyticCycleComplete : Prop

structure TopoisomeraseEvidence (T : TopoisomerasePackage) where
  strandPassageClosed : T.strandPassage
  catalyticCycleCompleteClosed : T.catalyticCycleComplete

def TopoisomeraseClosed (T : TopoisomerasePackage) : Prop :=
  T.strandPassage ∧ T.catalyticCycleComplete

theorem topoisomerase_closed_from_evidence (T : TopoisomerasePackage) (E : TopoisomeraseEvidence T) :
    TopoisomeraseClosed T := by
  exact And.intro E.strandPassageClosed E.catalyticCycleCompleteClosed

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse