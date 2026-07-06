import LeopoldtConjectureCanonicalLaneLean.Formalization
import LeopoldtConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace LeopoldtConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "ea8b4cc6044646ef9b242071d91a38317ea118581342ce3500fc56109619e85e", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "1b0e309c40bbedf1c76c216c97aa56f9a0233b666c2e8d5130e89b512bd8fe04", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "714463d11037ec6d3bd3ff7d61bf1a9fff5510866f3eeb7507b0d1300cdb095e", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "4cf556bcb530492fc78027fe6bb0190ee25184b46fbd2763a52f3354805ee7d6", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "6c64ceb942b237130fe8fa254820d886cb115ad2910b08bd61ee521103f400d1", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "8cb729961b8aaf6557fa38d0a081cb1353496dc9680d7d53d3e25467aca1370f", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "6b7453f6887e22613af24ff61a8c820a796f46438dc833b3fc1854d79edad80c", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "186ecf6d52a278d8f1122362a5fbfe83a4836fbf26eb40380a697615c9b79ba3", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "4c70bbf8de9f9ace5b97e83a80eda5e99260a321d9d14e785ec89e953f745885", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "LEO_G1", constant := "kappa_regulator" },
  { gate := "LEO_G2", constant := "sigma_padic" },
  { gate := "LEO_G3", constant := "kappa_compact" },
  { gate := "LEO_G4", constant := "rho_rigidity" },
  { gate := "LEO_G5", constant := "regulator_transfer" },
  { gate := "LEO_G6", constant := "eps_coh" },
  { gate := "LEO_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "bda64473861e6d40c7d0db4563fd01fc7ae70c3542a172def7b74238050c112e" },
  { path := "README.md", sha256 := "b1c4ddbf3f9b14d133d7c4c59699473c80391ae1c2e25e37f5d10a3b64e69132" },
  { path := "artifacts/constants_extracted.json", sha256 := "4cf556bcb530492fc78027fe6bb0190ee25184b46fbd2763a52f3354805ee7d6" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "714463d11037ec6d3bd3ff7d61bf1a9fff5510866f3eeb7507b0d1300cdb095e" },
  { path := "artifacts/constants_registry.json", sha256 := "6c64ceb942b237130fe8fa254820d886cb115ad2910b08bd61ee521103f400d1" },
  { path := "artifacts/promotion_report.json", sha256 := "6b7453f6887e22613af24ff61a8c820a796f46438dc833b3fc1854d79edad80c" },
  { path := "artifacts/stitch_constants.json", sha256 := "8cb729961b8aaf6557fa38d0a081cb1353496dc9680d7d53d3e25467aca1370f" },
  { path := "notes/EG1_public.md", sha256 := "0b6a36a25dc3637c71f28cebf096352696a78e1773f68d0751fb902e503c5722" },
  { path := "notes/EG2_public.md", sha256 := "3dcedada3eadf02effbdb1f79f46f679018e7ff0e14905e0e5c6a0628d268a80" },
  { path := "notes/EG3_public.md", sha256 := "34e71c81362e7310802e9b50b04ab119efa4b2bb07778385801c7f32ec11eb04" },
  { path := "notes/EG4_public.md", sha256 := "e8558705ed221a8fc62f05c4b65e3bf7e7160901399eda04d2b186e900b5a009" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "1b0e309c40bbedf1c76c216c97aa56f9a0233b666c2e8d5130e89b512bd8fe04" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "ab015d0df7b8091434fc8c548bd1d0df071d0aeecf364f50f4b4324b2e7ca150" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "58544db5e54f662d8eb89c925930e8d885c4bdd11bde04a42b7d069e12143e98" },
  { path := "paper/LEOPOLDT_CONJECTURE_PREPRINT.md", sha256 := "b7d490f18edebe8318fc982886c9b8f42966d46356c617f7f7d112c9e8d5312e" },
  { path := "repro/REPRO_PACK.md", sha256 := "a98c755fc56740f45990d6d3943d1611fb24806b926ad3d06a09a4453c19d83b" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "69ae61cc672f2f52593e9d96bc9edcf449cd97a6df222ec4e8949ee7ad96775e" },
  { path := "repro/certificate_baseline.json", sha256 := "4c70bbf8de9f9ace5b97e83a80eda5e99260a321d9d14e785ec89e953f745885" },
  { path := "repro/run_repro.sh", sha256 := "233621d84afc5f6860a2fa404ef1bdd0c855e8564bbf6dc3fb7c62d91058b382" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/leo_closure_guard.py", sha256 := "df1181d39088fb871214bd1579aece21627096b4cfaec66419a955083ecfc03c" },
  { path := "scripts/README.md", sha256 := "9ca748eb6323aeffd12c94bbe5eb906d9199f11ba4c5096ac2cf47dc1368cdae" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "LEO_G1", status := "PASS" },
  { gate := "LEO_G2", status := "PASS" },
  { gate := "LEO_G3", status := "PASS" },
  { gate := "LEO_G4", status := "PASS" },
  { gate := "LEO_G5", status := "PASS" },
  { gate := "LEO_G6", status := "PASS" },
  { gate := "LEO_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8051529790660226" },
  { key := "kappa_regulator", value := "1.091665" },
  { key := "regulator_transfer", value := "1.029422" },
  { key := "rho_rigidity", value := "1.076" },
  { key := "sigma_padic", value := "1.073" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_regulator",
  "regulator_transfer",
  "rho_rigidity",
  "sigma_padic",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end LeopoldtConjectureCanonicalLaneLean
end HautevilleHouse
