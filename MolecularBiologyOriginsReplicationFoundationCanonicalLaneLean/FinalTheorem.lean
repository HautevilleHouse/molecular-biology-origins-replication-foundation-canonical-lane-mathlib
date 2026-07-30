import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

def ConstrainedReplicationOriginClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_replication_origin_endgame (A : AdmissibleClass) :
    ConstrainedReplicationOriginClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse