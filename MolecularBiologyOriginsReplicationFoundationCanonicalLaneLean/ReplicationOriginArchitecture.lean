import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationInitiationComplex where
  helicaseLoaded : Prop
  originMelting : Prop
  polymeraseRecruitment : Prop
  bidirectionalForkEstablished : Prop

structure ReplicationInitiationComplexEvidence (C : ReplicationInitiationComplex) where
  helicaseLoadedClosed : C.helicaseLoaded
  originMeltingClosed : C.originMelting
  polymeraseRecruitmentClosed : C.polymeraseRecruitment
  bidirectionalForkEstablishedClosed : C.bidirectionalForkEstablished

def ReplicationInitiationClosed (C : ReplicationInitiationComplex) : Prop :=
  C.helicaseLoaded ∧ C.originMelting ∧ C.polymeraseRecruitment ∧ C.bidirectionalForkEstablished

theorem replication_initiation_closed_from_evidence (C : ReplicationInitiationComplex)
    (E : ReplicationInitiationComplexEvidence C) : ReplicationInitiationClosed C := by
  exact And.intro E.helicaseLoadedClosed
    (And.intro E.originMeltingClosed
      (And.intro E.polymeraseRecruitmentClosed E.bidirectionalForkEstablishedClosed))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse