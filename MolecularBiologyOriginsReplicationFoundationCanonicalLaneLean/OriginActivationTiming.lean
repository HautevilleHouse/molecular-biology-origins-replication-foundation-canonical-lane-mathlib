import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.InitiatorProteinAssembly

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure OriginActivationPackage {R : ReplicationOrigin} {P : InitiatorProteinPackage R} where
  licensingCompleted : Prop
  kinaseActivation : Prop
  helicaseUnwinding : Prop
  replicationForkEstablished : Prop
  activationTimeline : Prop
  licensingCompletedTerm : licensingCompleted
  kinaseActivationTerm : kinaseActivation
  helicaseUnwindingTerm : helicaseUnwinding
  replicationForkEstablishedTerm : replicationForkEstablished
  activationTimelineTerm : activationTimeline

structure OriginActivationEvidence {R : ReplicationOrigin} {P : InitiatorProteinPackage R} (A : OriginActivationPackage R P) where
  licensingCompletedClosed : A.licensingCompleted
  kinaseActivationClosed : A.kinaseActivation
  helicaseUnwindingClosed : A.helicaseUnwinding
  replicationForkEstablishedClosed : A.replicationForkEstablished
  activationTimelineClosed : A.activationTimeline

def OriginActivationClosed {R : ReplicationOrigin} {P : InitiatorProteinPackage R} (A : OriginActivationPackage R P) : Prop :=
  A.licensingCompleted ∧ A.kinaseActivation ∧ A.helicaseUnwinding ∧ A.replicationForkEstablished ∧ A.activationTimeline

theorem origin_activation_closed_from_evidence {R : ReplicationOrigin} {P : InitiatorProteinPackage R} (A : OriginActivationPackage R P) (E : OriginActivationEvidence A) :
    OriginActivationClosed A := by
  exact And.intro E.licensingCompletedClosed (And.intro E.kinaseActivationClosed (And.intro E.helicaseUnwindingClosed (And.intro E.replicationForkEstablishedClosed E.activationTimelineClosed)))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse