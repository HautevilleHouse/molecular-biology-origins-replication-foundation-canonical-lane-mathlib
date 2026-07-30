import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.PrimordialReplicationRate

/-!
# RNA World Transition Package
-/

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure RNAWorldTransition where
  abioticNucleotideFormation : Prop
  ribozymeCatalysis : Prop
  TemplateDirectedRnaSynthesis : Prop
  rnaGenomeReplication : Prop
  transitionToDNA : Prop

def RNAWorldTransitionClosed (R : RNAWorldTransition) : Prop :=
  R.abioticNucleotideFormation ∧ R.ribozymeCatalysis ∧ R.TemplateDirectedRnaSynthesis ∧ R.rnaGenomeReplication ∧ R.transitionToDNA

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse