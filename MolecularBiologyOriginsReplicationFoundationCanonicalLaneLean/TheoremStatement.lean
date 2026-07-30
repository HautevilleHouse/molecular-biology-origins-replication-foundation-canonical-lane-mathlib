import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationAdmittedObject where
  carrier : Type
  sequenceReplication : Prop
  originBinding : Prop
  elongationComplete : Prop
  conclusion : ReplicationWitnessClosed this

def ReplicationWitnessClosed (O : ReplicationAdmittedObject) : Prop :=
  O.elongationComplete

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse