import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.RNAWorldTransition

/-!
# Last Universal Common Ancestor (LUCA) Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure LUCAPackage where
  dnaReplicasePresent : Prop
  ribosomePresent : Prop
  cellMembranePresent : Prop
  geneticCodeEstablished : Prop
  freeLivingCellularAncestor : Prop

def LUCAClosed (L : LUCAPackage) : Prop :=
  L.dnaReplicasePresent ∧ L.ribosomePresent ∧ L.cellMembranePresent ∧ L.geneticCodeEstablished ∧ L.freeLivingCellularAncestor

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse