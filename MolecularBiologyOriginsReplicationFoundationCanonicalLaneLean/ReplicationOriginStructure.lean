import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationOrigin where
  originSequence : String
  initiatorBindingSite : Prop
  unwindingElement : Prop
  initiatorBindingSiteTerm : initiatorBindingSite
  unwindingElementTerm : unwindingElement

structure ReplicationOriginEvidence (R : ReplicationOrigin) where
  initiatorBindingSiteClosed : R.initiatorBindingSite
  unwindingElementClosed : R.unwindingElement

def ReplicationOriginClosed (R : ReplicationOrigin) : Prop :=
  R.initiatorBindingSite ∧ R.unwindingElement

theorem replication_origin_closed_from_evidence (R : ReplicationOrigin) (E : ReplicationOriginEvidence R) :
    ReplicationOriginClosed R := by
  exact And.intro E.initiatorBindingSiteClosed E.unwindingElementClosed

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse