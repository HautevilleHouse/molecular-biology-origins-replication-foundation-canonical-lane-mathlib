import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.OriginsPopulationDynamic

/-!
# Primordial Replication Rate Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure PrimordialReplicationRate where
  templateFidelity : Prop
  nucleotidePoolBalance : Prop
  errorCatastropheThreshold : Prop
  rnapProgression : Prop
  terminationEfficiency : Prop

def PrimordialReplicationRateClosed (R : PrimordialReplicationRate) : Prop :=
  R.templateFidelity ∧ R.nucleotidePoolBalance ∧ R.errorCatastropheThreshold ∧ R.rnapProgression ∧ R.terminationEfficiency

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse