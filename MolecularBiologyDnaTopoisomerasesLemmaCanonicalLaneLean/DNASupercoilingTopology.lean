import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DNASupercoilingTopology where
  linkingNumber : ℤ
  writhe : ℤ
  twist : ℤ
  supercoilingDensity : ℝ
  linkingNumberConservation : linkingNumber = writhe + twist

def SupercoilingClosed (S : DNASupercoilingTopology) : Prop :=
  S.linkingNumberConservation

theorem supercoiling_closed (S : DNASupercoilingTopology) : SupercoilingClosed S :=
  S.linkingNumberConservation

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse