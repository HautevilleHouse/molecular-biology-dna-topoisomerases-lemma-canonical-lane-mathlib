import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseActionPackage where
  substrateBound : Prop
  strandPassage : Prop
  religation : Prop
  linkingNumberChange : Prop
  atpHydrolysis : Prop

def TopoisomeraseActionClosed (T : TopoisomeraseActionPackage) : Prop :=
  T.substratesBound ∧ T.strandPassage ∧ T.religation ∧ T.linkingNumberChange ∧ T.atpHydrolysis

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse