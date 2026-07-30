import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure DNAPolymerasePackage where
  polymeraseEnzyme : Type u
  processivity : Prop
  fidelity : Prop
  elongationRate : Prop
  proofreadingActivity : Prop

structure DNAPolymeraseEvidence (D : DNAPolymerasePackage) where
  processivityClosed : D.processivity
  fidelityClosed : D.fidelity
  elongationRateClosed : D.elongationRate
  proofreadingActivityClosed : D.proofreadingActivity

def DNAPolymeraseClosed (D : DNAPolymerasePackage) : Prop :=
  D.processivity ∧ D.fidelity ∧ D.elongationRate ∧ D.proofreadingActivity

theorem dna_polymerase_closed_from_evidence
    (D : DNAPolymerasePackage) (E : DNAPolymeraseEvidence D) :
    DNAPolymeraseClosed D := by
  exact And.intro E.processivityClosed (And.intro E.fidelityClosed (And.intro E.elongationRateClosed E.proofreadingActivityClosed))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse
