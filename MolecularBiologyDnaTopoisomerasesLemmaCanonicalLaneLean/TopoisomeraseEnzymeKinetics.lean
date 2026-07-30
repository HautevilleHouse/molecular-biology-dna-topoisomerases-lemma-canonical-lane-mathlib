import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure EnzymeKineticsPackage where
  catalyticStepRate : Prop
  atpHydrolysisCoupling : Prop
  processivityMeasure : Prop
  relaxationRate : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  catalyticStepRateClosed : E.catalyticStepRate
  atpHydrolysisCouplingClosed : E.atpHydrolysisCoupling
  processivityMeasureClosed : E.processivityMeasure
  relaxationRateClosed : E.relaxationRate

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.catalyticStepRate ∧ E.atpHydrolysisCoupling ∧ E.processivityMeasure ∧ E.relaxationRate

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage) (Ev : EnzymeKineticsEvidence E) :
    EnzymeKineticsClosed E := by
  exact And.intro Ev.catalyticStepRateClosed
    (And.intro Ev.atpHydrolysisCouplingClosed
      (And.intro Ev.processivityMeasureClosed Ev.relaxationRateClosed))

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse
