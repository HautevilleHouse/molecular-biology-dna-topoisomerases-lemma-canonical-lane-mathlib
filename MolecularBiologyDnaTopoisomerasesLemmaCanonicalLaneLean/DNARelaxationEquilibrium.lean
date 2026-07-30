import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean

structure DNARelaxationEquilibrium where
  initialSupercoiling : ℝ
  finalSupercoiling : ℝ
  relaxationTime : ℝ
  equilibriumReached : finalSupercoiling = 0
  relaxationComplete : equilibriumReached ∧ relaxationTime > 0

def RelaxationClosed (R : DNARelaxationEquilibrium) : Prop :=
  R.relaxationComplete

theorem relaxation_closed (R : DNARelaxationEquilibrium) : RelaxationClosed R :=
  R.relaxationComplete

end MolecularBiologyDnaTopoisomerasesLemmaCanonicalLaneLean
end HautevilleHouse