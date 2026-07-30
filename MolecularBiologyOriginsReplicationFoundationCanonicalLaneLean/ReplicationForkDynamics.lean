import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationForkDynamicsPackage (O : OriginRecognitionPackage) where
  forkStability : Prop
  leadingLaggingStrandCoordination : Prop
  okazakiFragmentMaturation : Prop
  replisomeDisassemblyOnCompletion : Prop

structure ReplicationForkDynamicsEvidence {O : OriginRecognitionPackage} (F : ReplicationForkDynamicsPackage O) where
  forkStabilityClosed : F.forkStability
  leadingLaggingStrandCoordinationClosed : F.leadingLaggingStrandCoordination
  okazakiFragmentMaturationClosed : F.okazakiFragmentMaturation
  replisomeDisassemblyOnCompletionClosed : F.replisomeDisassemblyOnCompletion

def ReplicationForkDynamicsClosed {O : OriginRecognitionPackage} (F : ReplicationForkDynamicsPackage O) : Prop :=
  F.forkStability ∧ F.leadingLaggingStrandCoordination ∧ F.okazakiFragmentMaturation ∧ F.replisomeDisassemblyOnCompletion

theorem replication_fork_dynamics_closed_from_evidence
    {O : OriginRecognitionPackage} (F : ReplicationForkDynamicsPackage O)
    (E : ReplicationForkDynamicsEvidence F) : ReplicationForkDynamicsClosed F := by
  exact And.intro E.forkStabilityClosed
    (And.intro E.leadingLaggingStrandCoordinationClosed
      (And.intro E.okazakiFragmentMaturationClosed E.replisomeDisassemblyOnCompletionClosed))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse