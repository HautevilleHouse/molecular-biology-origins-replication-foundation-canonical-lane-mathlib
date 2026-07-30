import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ReplicationOriginAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ReplicationCoupledClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse