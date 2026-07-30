import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure SupercoilingDomain where
  linkingNumberDefect : Prop
  twistWritheRelation : Prop
  superhelicalDensity : Prop

structure SupercoilingEvidence (S : SupercoilingDomain) where
  linkingNumberDefectClosed : S.linkingNumberDefect
  twistWritheRelationClosed : S.twistWritheRelation
  superhelicalDensityClosed : S.superhelicalDensity

def SupercoilingClosed (S : SupercoilingDomain) : Prop :=
  S.linkingNumberDefect ∧ S.twistWritheRelation ∧ S.superhelicalDensity

theorem supercoiling_closed_from_evidence (S : SupercoilingDomain) (E : SupercoilingEvidence S) :
    SupercoilingClosed S := by
  exact And.intro E.linkingNumberDefectClosed
    (And.intro E.twistWritheRelationClosed E.superhelicalDensityClosed)

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse
