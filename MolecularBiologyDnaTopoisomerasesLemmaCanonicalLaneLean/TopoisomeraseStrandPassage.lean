import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseStrandPassagePackage where
  dnaMolecule : Type u
  topoisomeraseEnzyme : Type v
  passageEvent : Prop
  transientCleavageComplex : Prop
  strandPassageCompleted : Prop
  dnajoinRestored : Prop

structure TopoisomeraseStrandPassageEvidence (P : TopoisomeraseStrandPassagePackage) where
  passageEventClosed : P.passageEvent
  transientCleavageComplexClosed : P.transientCleavageComplex
  strandPassageCompletedClosed : P.strandPassageCompleted
  dnajoinRestoredClosed : P.dnajoinRestored

def TopoisomeraseStrandPassageClosed (P : TopoisomeraseStrandPassagePackage) : Prop :=
  P.passageEvent ∧ P.transientCleavageComplex ∧ P.strandPassageCompleted ∧ P.dnajoinRestored

theorem topoisomerase_strand_passage_closed_from_evidence (P : TopoisomeraseStrandPassagePackage) (E : TopoisomeraseStrandPassageEvidence P) :
    TopoisomeraseStrandPassageClosed P := by
  exact And.intro E.passageEventClosed (And.intro E.transientCleavageComplexClosed (And.intro E.strandPassageCompletedClosed E.dnajoinRestoredClosed))

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse