import LeopoldtConjectureCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace LeopoldtConjectureCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.galoisComparisonGateWitness,
    A.object.hodgeRealizationBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end LeopoldtConjectureCanonicalLaneLean
end HautevilleHouse
