import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationTimingPackage where
  originFiringTiming : Prop
  forkVelocity : Prop
  terminationSignal : Prop
  dormantOriginActivation : Prop
  forkStallingResponse : Prop

def ReplicationTimingEvidence (R : ReplicationTimingPackage) : Prop :=
  R.originFiringTiming ∧ R.forkVelocity ∧ R.terminationSignal ∧
  R.dormantOriginActivation ∧ R.forkStallingResponse

theorem replication_timing_closed (R : ReplicationTimingPackage) :
    ReplicationTimingEvidence R := by
  exact And.intro R.originFiringTiming
    (And.intro R.forkVelocity
      (And.intro R.terminationSignal
        (And.intro R.dormantOriginActivation R.forkStallingResponse)))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse