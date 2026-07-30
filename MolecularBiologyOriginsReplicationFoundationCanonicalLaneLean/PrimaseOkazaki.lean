import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure PrimaseOkazakiPackage where
  primaseEnzyme : Type u
  rnaPrimerSynthesis : Prop
  okazakiFragmentJoining : Prop
  laggingStrandCoordination : Prop

structure PrimaseOkazakiEvidence (P : PrimaseOkazakiPackage) where
  rnaPrimerSynthesisClosed : P.rnaPrimerSynthesis
  okazakiFragmentJoiningClosed : P.okazakiFragmentJoining
  laggingStrandCoordinationClosed : P.laggingStrandCoordination

def PrimaseOkazakiClosed (P : PrimaseOkazakiPackage) : Prop :=
  P.rnaPrimerSynthesis ∧ P.okazakiFragmentJoining ∧ P.laggingStrandCoordination

theorem primase_okazaki_closed_from_evidence
    (P : PrimaseOkazakiPackage) (E : PrimaseOkazakiEvidence P) :
    PrimaseOkazakiClosed P := by
  exact And.intro E.rnaPrimerSynthesisClosed (And.intro E.okazakiFragmentJoiningClosed E.laggingStrandCoordinationClosed)

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse
