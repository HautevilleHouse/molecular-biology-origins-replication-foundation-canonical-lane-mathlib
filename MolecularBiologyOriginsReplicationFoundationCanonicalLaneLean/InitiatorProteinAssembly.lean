import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.ReplicationOriginStructure

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure InitiatorProteinPackage (R : ReplicationOrigin) where
  orcComplex : Prop
  cdc6Binding : Prop
  cdt1Loading : Prop
  mcmComplex : Prop
  assemblySequence : Prop
  orcComplexTerm : orcComplex
  cdc6BindingTerm : cdc6Binding
  cdt1LoadingTerm : cdt1Loading
  mcmComplexTerm : mcmComplex
  assemblySequenceTerm : assemblySequence

structure InitiatorProteinEvidence {R : ReplicationOrigin} (P : InitiatorProteinPackage R) where
  orcComplexClosed : P.orcComplex
  cdc6BindingClosed : P.cdc6Binding
  cdt1LoadingClosed : P.cdt1Loading
  mcmComplexClosed : P.mcmComplex
  assemblySequenceClosed : P.assemblySequence

def InitiatorProteinClosed {R : ReplicationOrigin} (P : InitiatorProteinPackage R) : Prop :=
  P.orcComplex ∧ P.cdc6Binding ∧ P.cdt1Loading ∧ P.mcmComplex ∧ P.assemblySequence

theorem initiator_protein_closed_from_evidence {R : ReplicationOrigin} (P : InitiatorProteinPackage R) (E : InitiatorProteinEvidence P) :
    InitiatorProteinClosed P := by
  exact And.intro E.orcComplexClosed (And.intro E.cdc6BindingClosed (And.intro E.cdt1LoadingClosed (And.intro E.mcmComplexClosed E.assemblySequenceClosed)))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse