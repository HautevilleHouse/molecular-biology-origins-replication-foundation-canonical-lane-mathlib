import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure OriginRecognitionPackage where
  originSequence : Type u
  initiatorBinding : Prop
  helicaseRecruitment : Prop
  bidirectionalReplicationFork : Prop
  replicationTimingControlled : Prop

structure OriginRecognitionEvidence (O : OriginRecognitionPackage) where
  initiatorBindingClosed : O.initiatorBinding
  helicaseRecruitmentClosed : O.helicaseRecruitment
  bidirectionalReplicationForkClosed : O.bidirectionalReplicationFork
  replicationTimingControlledClosed : O.replicationTimingControlled

def OriginRecognitionClosed (O : OriginRecognitionPackage) : Prop :=
  O.initiatorBinding ∧ O.helicaseRecruitment ∧ O.bidirectionalReplicationFork ∧ O.replicationTimingControlled

theorem origin_recognition_closed_from_evidence (O : OriginRecognitionPackage) (E : OriginRecognitionEvidence O) :
    OriginRecognitionClosed O := by
  exact And.intro E.initiatorBindingClosed
    (And.intro E.helicaseRecruitmentClosed
      (And.intro E.bidirectionalReplicationForkClosed E.replicationTimingControlledClosed))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse