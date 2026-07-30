import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure HelicaseUnwindingPackage where
  helicaseComplex : Type u
  atpHydrolysis : Prop
  unwindingRate : Prop
  strandSeparation : Prop
  processivity : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  atpHydrolysisClosed : H.atpHydrolysis
  unwindingRateClosed : H.unwindingRate
  strandSeparationClosed : H.strandSeparation
  processivityClosed : H.processivity

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.atpHydrolysis ∧ H.unwindingRate ∧ H.strandSeparation ∧ H.processivity

theorem helicase_unwinding_closed_from_evidence
    (H : HelicaseUnwindingPackage) (E : HelicaseUnwindingEvidence H) :
    HelicaseUnwindingClosed H := by
  exact And.intro E.atpHydrolysisClosed (And.intro E.unwindingRateClosed (And.intro E.strandSeparationClosed E.processivityClosed))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse
