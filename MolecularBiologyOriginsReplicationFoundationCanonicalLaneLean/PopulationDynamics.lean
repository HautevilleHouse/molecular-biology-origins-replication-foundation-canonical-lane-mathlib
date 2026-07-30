import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure PopulationModel where
  populationSize : ℕ
  birthRate : ℝ
  deathRate : ℝ
  carryingCapacity : ℝ
  growthEquationSatisfied : Prop

def growthRateConstraint (P : PopulationModel) : Prop :=
  (P.birthRate - P.deathRate) * (1 - (P.populationSize : ℝ) / P.carryingCapacity) ≥ 0

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse