import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationOriginSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ReplicationOriginAdmittedObject where
  space : ReplicationOriginSpace
  originFunctionality : Prop
  replicationComponents : Type
  replicationCoupled : Prop
  conclusion : replicationCoupled

def ReplicationCoupledClosed (O : ReplicationOriginAdmittedObject) : Prop :=
  O.replicationCoupled

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse