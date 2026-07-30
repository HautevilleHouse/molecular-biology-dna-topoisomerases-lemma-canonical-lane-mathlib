import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure TopoisomeraseKinetics where
  catalyticRate : ℝ
  bindingAffinity : ℝ
  relaxationEfficiency : ℝ
  atpHydrolysisCoupling : Bool
  kineticsBalanced : catalyticRate > 0 ∧ bindingAffinity > 0 ∧ relaxationEfficiency > 0

def KineticsClosed (K : TopoisomeraseKinetics) : Prop :=
  K.kineticsBalanced

theorem kinetics_closed (K : TopoisomeraseKinetics) : KineticsClosed K :=
  K.kineticsBalanced

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse