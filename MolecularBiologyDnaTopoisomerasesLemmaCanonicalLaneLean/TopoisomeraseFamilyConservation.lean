import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseFamilyConservation where
  typeIConservation : Prop
  typeIIConservation : Prop
  atpHydrolysisPreserved : Prop
  tyrosineIntermediateConserved : Prop
  allConserved : typeIConservation ∧ typeIIConservation ∧ atpHydrolysisPreserved ∧ tyrosineIntermediateConserved

def FamilyConservationClosed (F : TopoisomeraseFamilyConservation) : Prop :=
  F.allConserved

theorem family_conservation_closed (F : TopoisomeraseFamilyConservation) : FamilyConservationClosed F :=
  F.allConserved

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse