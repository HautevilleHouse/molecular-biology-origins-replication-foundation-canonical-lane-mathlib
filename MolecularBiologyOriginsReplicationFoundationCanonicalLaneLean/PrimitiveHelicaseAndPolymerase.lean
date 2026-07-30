import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure PrimitiveHelicase where
  DnaBindingDomain : Type
  AtpHydrolysisActivity : Prop
  unwindingProcessive : Prop
  unwindingProcessiveTerm : unwindingProcessive

structure PrimitivePolymerase where
  TemplateBinding : Type
  NucleotideAddition : Type
  elongationProcessive : Prop
  proofreadingCapability : Prop
  elongationProcessiveTerm : elongationProcessive
  proofreadingCapabilityTerm : proofreadingCapability

structure PrimitiveReplicationFork where
  helicase : PrimitiveHelicase
  polymeraseLeading : PrimitivePolymerase
  polymeraseLagging : PrimitivePolymerase
  primaseActivity : Prop
  okazakiFragments : Prop
  leadingLaggingCoordination : Prop
  leadingLaggingCoordinationTerm : leadingLaggingCoordination

structure ReplicationForkEvidence (F : PrimitiveReplicationFork) where
  leadingLaggingCoordinationClosed : F.leadingLaggingCoordination

def ReplicationForkClosed (F : PrimitiveReplicationFork) : Prop :=
  F.leadingLaggingCoordination

theorem replication_fork_closed_from_evidence (F : PrimitiveReplicationFork)
    (E : ReplicationForkEvidence F) : ReplicationForkClosed F :=
  E.leadingLaggingCoordinationClosed

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse