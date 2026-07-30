import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.OriginsPopulationDynamic

/-!
# Origins Population Dynamics Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationGrowth : Prop
  competitionSelection : Prop
  neutralDrift : Prop
  mutationRate : Prop
  fitnessLandscape : Prop

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.populationGrowth ∧ P.competitionSelection ∧ P.neutralDrift ∧ P.mutationRate ∧ P.fitnessLandscape

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse