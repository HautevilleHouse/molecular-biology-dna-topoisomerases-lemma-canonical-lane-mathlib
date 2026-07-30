import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseInhibitionPackage where
  cleavageComplexStabilized : Prop
  cellCycleArrest : Prop
  dnaDamageResponse : Prop
  apoptosisInduction : Prop
  therapeuticWindow : Prop

def TopoisomeraseInhibitionClosed (I : TopoisomeraseInhibitionPackage) : Prop :=
  I.cleavageComplexStabilized ∧ I.cellCycleArrest ∧ I.dnaDamageResponse ∧ I.apoptosisInduction ∧ I.therapeuticWindow

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse