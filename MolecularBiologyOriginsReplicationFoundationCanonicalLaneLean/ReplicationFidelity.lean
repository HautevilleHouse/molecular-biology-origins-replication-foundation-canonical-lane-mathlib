import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationFidelity where
  mutationRate : ℝ
  proofreadingRate : ℝ
  errorThreshold : ℝ
  fidelityRequirement : mutationRate * (1 - proofreadingRate) ≤ errorThreshold

def fidelityClosed (F : ReplicationFidelity) : Prop :=
  F.fidelityRequirement

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse