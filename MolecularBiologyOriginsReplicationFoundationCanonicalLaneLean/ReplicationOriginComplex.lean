import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.GeneticCode

/-!
# Replication Origin Complex Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure ReplicationOriginComplex where
  originSequence : String
  initiatorBinding : Prop
  helicaseLoading : Prop
  replicationBubble : Prop
  bidirectionalElongation : Prop
  cellCycleRegulation : Prop

def ReplicationOriginComplexClosed (C : ReplicationOriginComplex) : Prop :=
  C.initiatorBinding ∧ C.helicaseLoading ∧ C.replicationBubble ∧ C.bidirectionalElongation ∧ C.cellCycleRegulation

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse