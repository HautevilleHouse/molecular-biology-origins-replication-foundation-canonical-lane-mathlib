import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationForkPackage where
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  forkStability : Prop
  checkpointRegulation : Prop

structure ReplicationForkEvidence (F : ReplicationForkPackage) where
  leadingStrandSynthesisClosed : F.leadingStrandSynthesis
  laggingStrandSynthesisClosed : F.laggingStrandSynthesis
  forkStabilityClosed : F.forkStability
  checkpointRegulationClosed : F.checkpointRegulation

def ReplicationForkClosed (F : ReplicationForkPackage) : Prop :=
  F.leadingStrandSynthesis ∧ F.laggingStrandSynthesis ∧ F.forkStability ∧ F.checkpointRegulation

theorem replication_fork_closed_from_evidence
    (F : ReplicationForkPackage) (E : ReplicationForkEvidence F) :
    ReplicationForkClosed F := by
  exact And.intro E.leadingStrandSynthesisClosed (And.intro E.laggingStrandSynthesisClosed (And.intro E.forkStabilityClosed E.checkpointRegulationClosed))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse
