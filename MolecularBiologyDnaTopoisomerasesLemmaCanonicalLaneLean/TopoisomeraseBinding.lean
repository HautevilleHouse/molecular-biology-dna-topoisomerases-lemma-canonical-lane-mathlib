import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseBindingPackage where
  dnaBindingSite : Type u
  enzymeBindingAffinity : Prop
  specificBinding : Prop
  conformationalChange : Prop
  bindingCatalysisLink : Prop

structure TopoisomeraseBindingEvidence (B : TopoisomeraseBindingPackage) where
  enzymeBindingAffinityClosed : B.enzymeBindingAffinity
  specificBindingClosed : B.specificBinding
  conformationalChangeClosed : B.conformationalChange
  bindingCatalysisLinkClosed : B.bindingCatalysisLink

def TopoisomeraseBindingClosed (B : TopoisomeraseBindingPackage) : Prop :=
  B.enzymeBindingAffinity ∧ B.specificBinding ∧ B.conformationalChange ∧ B.bindingCatalysisLink

theorem topoisomerase_binding_closed_from_evidence (B : TopoisomeraseBindingPackage) (E : TopoisomeraseBindingEvidence B) :
    TopoisomeraseBindingClosed B := by
  exact And.intro E.enzymeBindingAffinityClosed (And.intro E.specificBindingClosed (And.intro E.conformationalChangeClosed E.bindingCatalysisLinkClosed))

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse