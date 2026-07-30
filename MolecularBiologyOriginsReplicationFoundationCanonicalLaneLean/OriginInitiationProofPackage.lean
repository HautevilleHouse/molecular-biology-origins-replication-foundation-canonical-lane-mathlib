import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

structure OriginActivationProof where
  orcBinding : Prop
  cdc6Loading : Prop
  cdt1Recruitment : Prop
  mcmHelicaseLoading : Prop
  preRcFormation : Prop
  phosphorylationActivation : Prop
  initiationBurst : Prop
  orcBindingTerm : orcBinding
  cdc6LoadingTerm : cdc6Loading
  cdt1RecruitmentTerm : cdt1Recruitment
  mcmHelicaseLoadingTerm : mcmHelicaseLoading
  preRcFormationTerm : preRcFormation
  phosphorylationActivationTerm : phosphorylationActivation
  initiationBurstTerm : initiationBurst

def OriginActivationProofClosed (P : OriginActivationProof) : Prop :=
  P.orcBinding ∧ P.cdc6Loading ∧ P.cdt1Recruitment ∧ P.mcmHelicaseLoading ∧
  P.preRcFormation ∧ P.phosphorylationActivation ∧ P.initiationBurst

theorem origin_activation_proof_closed (P : OriginActivationProof) :
    OriginActivationProofClosed P := by
  exact And.intro P.orcBindingTerm
    (And.intro P.cdc6LoadingTerm
      (And.intro P.cdt1RecruitmentTerm
        (And.intro P.mcmHelicaseLoadingTerm
          (And.intro P.preRcFormationTerm
            (And.intro P.phosphorylationActivationTerm
              P.initiationBurstTerm)))))

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse