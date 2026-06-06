# CH ALIS Connect — FHIR Implementation Guide

FHIR R4 Implementation Guide for **ALIS-Connect** (`ch.fhir.ig.ch-alis`, canonical
`http://fhir.ch/ig/ch-alis`).

ALIS ("Leistungsschnittstelle") is a Swiss **XML interface standard** by
[ALIS-Connect](https://www.alis-connect.ch/) for transmitting service/billing data
(Leistungen) between hospital information systems and billing systems. ALIS **5.1** supports TARDOC and outpatient flat rates (ambulante Pauschalen) managed by
[OAAT-OTMA](https://www.oaat-otma.ch/): per-service diagnoses, tariff-session information
(Anhang B) and lab/pathology service assignment.

This guide defines a **mapping between the ALIS XML 5.1 standard and HL7 FHIR**. It contains two
parallel representations:

1. **Logical models** — a faithful 1:1 FHIR mirror of the ALIS XML schema (Visit, Service,
   Diagnosis, ServiceAssignment, SessionSectionB, PersonV40, ParameterV40, …).
2. **Profiles** — the ALIS data expressed on "real" FHIR resources for interoperability. The
   `ChargeItem` resource is the closest FHIR fit for an ALIS Service; each Service of a Visit
   becomes one `ChargeItem` (with contained `Patient`, `Encounter` and `Condition`), transmitted
   together in a transaction `Bundle`.

The element-level correspondence is documented in both directions: **Concept Maps** (logical
model → FHIR profile) and FHIR **Mappings** (profile → ALIS field, on each profile's *Mappings*
tab).

## Published versions

- Continuous integration build: https://build.fhir.org/ig/hl7ch/ch-alis-connect

## Building the IG

The guide is built with the **HL7 FHIR IG Publisher**, which runs **SUSHI** itself as its first
step — there is no need to run `sushi` separately:

```sh
java -jar publisher.jar -ig ig.ini
```

The build compiles the FSH in [input/fsh/](input/fsh/) to `fsh-generated/`, then renders the site
to `output/` (inspect `output/qa.txt` for errors/warnings). Run `sushi .` on its own only for a
quick FSH-syntax check when you don't need the rendered site.
