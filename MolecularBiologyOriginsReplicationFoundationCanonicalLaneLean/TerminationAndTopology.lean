import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.ReplicationForkDynamics

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure TerminationPackage {R : ReplicationOrigin} {P : InitiatorProteinPackage R} {A : OriginActivationPackage R P} {F : ReplicationForkPackage R P A} where
  forkConvergence : Prop
  decatenation : Prop
  chromosomeSegregation : Prop
  topologicalResolution : Prop
  forkConvergenceTerm : forkConvergence
  decatenationTerm : decatenation
  chromosomeSegregationTerm : chromosomeSegregation
  topologicalResolutionTerm : topologicalResolution

structure TerminationEvidence {R : ReplicationOrigin} {P : InitiatorProteinPackage R} {A : OriginActivationPackage R P} {F : ReplicationForkPackage R P A} (T : TerminationPackage R P A F) where
  forkConvergenceClosed : T.forkConvergence
  decatenationClosed : T.decatenation
  chromosomeSegregationClosed : T.chromosomeSegregation
  topologicalResolutionClosed : T.topologicalResolution

def TerminationClosed {R : ReplicationOrigin} {P : InitiatorProteinPackage R} {A : OriginActivationPackage R P} {F : ReplicationForkPackage R P A} (T : TerminationPackage R P A F) : Prop :=
  T.forkConvergence ∧ T.decatenation ∧ T.chromosomeSegregation ∧ T.topologicalResolution

theorem termination_closed_from_evidence {R : ReplicationOrigin} {P : InitiatorProteinPackage R} {A : OriginActivationPackage R P} {F : ReplicationForkPackage R P A} (T : TerminationPackage R P A F) (E : TerminationEvidence T) :
    TerminationClosed T := by
  exact And.intro E.forkConvergenceClosed (And.intro E.decatenationClosed (And.intro E.chromosomeSegregationClosed E.topologicalResolutionClosed))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse