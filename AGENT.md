# AGENT.md — CH ALIS FHIR Implementation Guide

Orientation for AI agents (and humans) working in this repository.

## What this project is

ALIS ("Leistungsschnittstelle") is a Swiss **XML interface standard** (by ALIS-Connect)
for transmitting service/billing data (Leistungen) between hospital information systems and
billing systems. 

This repo is a **FHIR R4 Implementation Guide** (`ch.fhir.ig.ch-alis-connect`, canonical
`http://fhir.ch/ig/ch-alis-connect`) that models that XML standard in FHIR and provides a transform
from ALIS XML into FHIR resources. It is built with the **HL7 FHIR IG Publisher** + **SUSHI**.

Two parallel representations live here:
1. **Logical models** — a faithful FHIR mirror of the ALIS XML schema (1:1 with XSD/doc tables).
2. **Profiles + StructureMap** — map ALIS data onto "real" FHIR resources (ChargeItem,
   Condition, Encounter, Patient) for interoperability.

## Logical model ↔ schema mapping

One logical model per XSD `complexType`, in [input/fsh/logicals/](input/fsh/logicals/):

| Doc § | XML tag          | Logical model FSH                                  |
|-------|------------------|----------------------------------------------------|
| 1     | Header           | `ChAlisLeistungsschnittstelleHeader.fsh`           |
| 2     | Visit            | `ChAlisLeistungsschnittstelleVisit.fsh`            |
| 3     | Service          | `ChAlisLeistungsschnittstelleService.fsh`          |
| 3.19  | SessionSectionB  | `ChAlisLeistungsschnittstelleSessionSectionB.fsh`  |
| 3.20  | Diagnosis        | `ChAlisLeistungsschnittstelleDiagnosis.fsh`        |
| 3.21  | ServiceAssignment| `ChAlisLeistungsschnittstelleServiceAssignment.fsh`|
| 3.22  | PersonV40        | `ChAlisLeistungsschnittstellePersonV40.fsh`        |
| 4     | ParameterV40     | `ChAlisLeistungsschnittstelleParameterV40.fsh`     |
| —     | DiagGroup        | `ChAlisLeistungsschnittstelleDiagGroup.fsh` (4.3 legacy) |

Conventions used in these logical models:
- `Parent: $Base`, with the `elementdefinition-namespace` / `noNamespace` extension so the
  models serialize back to plain ALIS XML (attributes use `^representation = #xmlAttr`).
- Leaf fields point at **custom datatype logicals** (`Text`, `Date`, `DateTime`, `Decimal`,
  `UnsignedInt`, `Boolean`) under canonical `http://fhir.ch/ig/ch-alis-connect/StructureDefinition/...`.
- Each element's `short` text carries the doc table coordinates (e.g. `"3.20.1 (*) Diagnosecode …"`)
  so the model is traceable back to the certification document.

## FHIR profiles, extensions, terminology

- **Profiles** ([input/fsh/profiles/](input/fsh/profiles/)): `ChAlisChargeItem`, `ChAlisCondition`,
  `ChAlisEncounter`, `ChAlisPatient` — real FHIR resources carrying ALIS data, depend on `ch-core`.
- **Extensions** ([input/fsh/extensions/](input/fsh/extensions/)): one per ALIS field that has no
  native FHIR home (Form, SectionCode, ItemNumber, RefItemNumber, OrderId, OrderDate, TPValue,
  Termination, SessionId, SessionAnnexB, ServiceAssignment, ParameterV40, DiagnosisConfidential).
- **Terminology** ([codesystems/](input/fsh/codesystems/), [valuesets/](input/fsh/valuesets/)):
  `LKAAT`, `ChAlisParamTyp`, `ChAlisPersonTyp`, `SwissMedicalSpecialties`.
- **Mappings** ([input/fsh/mappings/](input/fsh/mappings/)): FSH `Mapping` resources named
  `alis-for-*` that document how each profile/extension corresponds to ALIS fields.

## Build (IG Publisher + SUSHI)

Standard HL7 IG tooling — there is **no `sushi-config.yaml`**; the ImplementationGuide is
hand-authored as a resource:

- [ig.ini](ig.ini) → points at `input/ch.fhir.ig.ch-alis-connect.json` (the IG resource) and
  template `ch.fhir.ig.template#current`.
- [input/ch.fhir.ig.ch-alis-connect.json](input/ch.fhir.ig.ch-alis-connect.json) — the `ImplementationGuide`
- **SUSHI** compiles [input/fsh/](input/fsh/) → [fsh-generated/resources/](fsh-generated/resources/)
  (StructureDefinitions, CodeSystems, ValueSets). `index.txt` lists every FSH artifact.
- **IG Publisher** then renders everything to [output/](output/) (the rendered site;
  `output/qa.html`/`output/qa.txt` is the build's QA report, `output/*.html` the artifact pages).
- Narrative/pages: [input/pagecontent/](input/pagecontent/) (`index.md`, `alis5.md`,
  `changelog.md`, plus `*.xml` page fragments for logical models, profiles, maps, terminology).

### Running the build

The **IG Publisher runs SUSHI itself** as its first step, so there is no need to run `sushi`
separately before it — just run the publisher and it will regenerate `fsh-generated/` and then
render `output/`:

```sh
java -jar "/Users/oegger/.vscode/extensions/yannick-lagger.vscode-fhir-tools-1.5.1/publisher.jar" -ig ig.ini
```

(The `publisher.jar` ships with the VS Code FHIR Tools extension; the path above is where that
extension installs it. `_genonce.sh` is a thin wrapper around the same jar but is not committed.)

Run `sushi .` on its own **only** for a fast FSH-syntax check when you don't need the rendered
site — it writes `fsh-generated/` but no `output/`. After a publisher run, inspect
`output/qa.txt` for errors/warnings.
Validate / convert an example against a logical model (see [README.md](README.md)):
```sh
java -jar validator_cli.jar input/resources/binary/Alis51LKAATIcd.xml \
  -version 4.0.1 -ig ch.fhir.ig.ch-alis-connect#dev \
  -profile http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Header
# add -convert -output alis.json to get the logical-model JSON form
```

`output/`, `input-cache/`, `temp/`, `template/`, `fsh-generated/`, and `*.jar` are
**git-ignored** — never hand-edit them; they are regenerated by the build.

## Where to make changes

| To change…                              | Edit…                                         |
|-----------------------------------------|-----------------------------------------------|
| The ALIS XML model (fields/cardinality) | `input/fsh/logicals/*.fsh`                    |
| A FHIR profile / extension / valueset   | `input/fsh/{profiles,extensions,valuesets,codesystems}/*.fsh` |
| The ALIS→FHIR transform                 | `maps/Alis51toBundle.map`                     |
| Narrative pages                         | `input/pagecontent/*`                         |
| IG metadata / example registration      | `input/ch.fhir.ig.ch-alis-connect.json`              |
| The spec being modeled (reference only) | `input/resources/binary/*.xsd`, `docu/*TC3*` |

After editing FSH, run SUSHI (then the IG Publisher) and check `output/qa.html`.
After editing the `.map`, re-run `transformalis5.sh` to refresh the example bundles.
