import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DnaTopologyPackage where
  doubleHelix : Prop
  supercoilingState : Prop
  writheNumber : Prop
  linkingNumber : Prop
  twistNumber : Prop

def DnaTopologyClosed (D : DnaTopologyPackage) : Prop :=
  D.doubleHelix ∧ D.supercoilingState ∧ D.writheNumber ∧ D.linkingNumber ∧ D.twistNumber

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse