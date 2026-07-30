import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationOriginPackage where
  originSequence : Type u
  initiatorProtein : Type v
  bindingAffinity : Prop
  unwindingEfficiency : Prop
  directionality : Prop

structure ReplicationOriginEvidence (R : ReplicationOriginPackage) where
  bindingAffinityClosed : R.bindingAffinity
  unwindingEfficiencyClosed : R.unwindingEfficiency
  directionalityClosed : R.directionality

def ReplicationOriginClosed (R : ReplicationOriginPackage) : Prop :=
  R.bindingAffinity ∧ R.unwindingEfficiency ∧ R.directionality

theorem replication_origin_closed_from_evidence
    (R : ReplicationOriginPackage) (E : ReplicationOriginEvidence R) :
    ReplicationOriginClosed R := by
  exact And.intro E.bindingAffinityClosed (And.intro E.unwindingEfficiencyClosed E.directionalityClosed)

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse
