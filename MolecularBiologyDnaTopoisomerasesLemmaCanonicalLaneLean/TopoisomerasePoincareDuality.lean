import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomerasePoincareDualityPackage where
  genusSurfaceReconciliation : Prop
  crossingNumberInvariant : Prop
  seifertSurfaceBoundary : Prop
  writheLinkingDuality : Prop

structure TopoisomerasePoincareDualityEvidence (T : TopoisomerasePoincareDualityPackage) where
  genusSurfaceReconciliationClosed : T.genusSurfaceReconciliation
  crossingNumberInvariantClosed : T.crossingNumberInvariant
  seifertSurfaceBoundaryClosed : T.seifertSurfaceBoundary
  writheLinkingDualityClosed : T.writheLinkingDuality

def TopoisomerasePoincareDualityClosed (T : TopoisomerasePoincareDualityPackage) : Prop :=
  T.genusSurfaceReconciliation ∧ T.crossingNumberInvariant ∧ T.seifertSurfaceBoundary ∧ T.writheLinkingDuality

theorem topoisomerase_poincare_duality_closed_from_evidence
    (T : TopoisomerasePoincareDualityPackage) (E : TopoisomerasePoincareDualityEvidence T) :
    TopoisomerasePoincareDualityClosed T := by
  exact And.intro E.genusSurfaceReconciliationClosed
    (And.intro E.crossingNumberInvariantClosed
      (And.intro E.seifertSurfaceBoundaryClosed E.writheLinkingDualityClosed))

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse
