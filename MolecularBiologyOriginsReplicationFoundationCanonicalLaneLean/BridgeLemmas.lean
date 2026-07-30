import MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReplicationCoupledClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyOriginsReplicationFoundationCanonicalLaneLean
end HautevilleHouse