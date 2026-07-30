import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure MutationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FitnessLandscape where
  space : MutationSpace
  fitnessFunction : space.carrier → ℝ
  smoothness : Prop
  criticalPoints : Prop

structure ReplicationOrigin where
  sequence : String
  location : MutationSpace.carrier
  initiationRate : ℝ
  regulation : Prop

structure AdmittedObject where
  origin : ReplicationOrigin
  landscape : FitnessLandscape
  fitnessAtOrigin : landscape.fitnessFunction origin.location
  growthRate : ℝ
  constraintSatisfied : Prop
  conclusion : constraintSatisfied

structure EndgameState where
  object : AdmittedObject

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.constraintSatisfied

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse