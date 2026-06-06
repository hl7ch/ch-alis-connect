### Mapping
The figure on the left shows the structural design of the ALIS interface. The figure on the right shows the transformed message as FHIR Bundle where the corresponding ChargeItem resources are inserted. In the same colour the basic mapping between both formats is shown.

{% include img.html img="message.png" width="60%" %}

### ALIS XML to FHIR Resource ChargeItem and related resources mapping

In a file based exchange 1..* Visits are documented. A single ALIS XML file carries a Header followed by one or more `Visit` elements; each Visit represents a patient case and contains 1..* `Service` elements (the accountable Leistungen), which in turn may carry nested Diagnosis, ServiceAssignment, SessionSectionB, PersonV40 and ParameterV40 information.

The ALIS XML structure is mirrored 1:1 by a set of **logical models**. They are listed on the [Logical Models](logicalmodels.html) page, with [Visit](StructureDefinition-Visit.html) as the entry point.

Every `Visit/Service` maps to one [ChargeItem](StructureDefinition-ch-alis-connect-chargeitem.html), and the visit- and service-level data is distributed onto the ChargeItem together with the [Patient](StructureDefinition-ch-alis-connect-patient.html), [Encounter](StructureDefinition-ch-alis-connect-encounter.html) and [Condition](StructureDefinition-ch-alis-connect-condition.html) resources. The `ChargeItem.context` references the Encounter (the Visit) and `ChargeItem.subject` the Patient, so the Visit grouping is preserved.

The element-level correspondence between the ALIS logical models and the FHIR profiles is documented as **Concept Maps** (Model Maps), one per logical model. They show, side by side, each source element and the FHIR target element it maps to:

* [ALIS Visit to FHIR Mapping](ConceptMap-Alis2FhirVisit.html) — Visit → Encounter, Patient, ChargeItem
* [ALIS Service to FHIR Mapping](ConceptMap-Alis2FhirService.html) — Service → ChargeItem, Condition
* [ALIS Diagnosis to FHIR Mapping](ConceptMap-Alis2FhirDiagnosis.html) — Diagnosis → Condition
* [ALIS PersonV40 to FHIR Mapping](ConceptMap-Alis2FhirPersonV40.html) — PersonV40 → ChargeItem.performer
* [ALIS ParameterV40 to FHIR Mapping](ConceptMap-Alis2FhirParameterV40.html) — ParameterV40 → ParameterV40 extension
* [ALIS ServiceAssignment to FHIR Mapping](ConceptMap-Alis2FhirServiceAssignment.html) — ServiceAssignment → ServiceAssignment extension
* [ALIS SessionSectionB to FHIR Mapping](ConceptMap-Alis2FhirSessionSectionB.html) — SessionSectionB → SessionAnnexB extension

#### ParameterV40: values mapped to dedicated FHIR elements

A `ParameterV40` entry is generally carried in the generic [ParameterV40 extension](StructureDefinition-ch-alis-connect-ext-parameterv40.html) on the ChargeItem. A few `ParamTyp` values are instead mapped to a dedicated FHIR element or extension, as defined in the [ParamTyp code system](CodeSystem-ch-alis-connect-paramtyp.html) and the [ParameterV40 Concept Map](ConceptMap-Alis2FhirParameterV40.html):

| ParamTyp | FHIR target |
|---|---|
| `BMI` | `ChargeItem.supportingInformation` (reference to a BMI Observation) |
| `Billable` | `ChargeItem.status` (`billable` \| `not-billable`) |
| `Amount` | `ChargeItem.priceOverride.value` |
| `SLIndicationCode` | CH Core regulated-authorization indication-code extension (`ChargeItem.extension:SLIndicationCode`) |

### FHIR mapping from Resource ChargeItem to ALIS XML

The reverse view — starting from a FHIR resource and looking up the ALIS XML field each element corresponds to — is documented directly on the FHIR profiles under their **Mappings** tab (mapping identity `alis`). See:

* [ChargeItem mappings](StructureDefinition-ch-alis-connect-chargeitem-mappings.html)
* [Patient mappings](StructureDefinition-ch-alis-connect-patient-mappings.html)
* [Encounter mappings](StructureDefinition-ch-alis-connect-encounter-mappings.html)
* [Condition mappings](StructureDefinition-ch-alis-connect-condition-mappings.html)

The same `alis` mappings are also defined on the ALIS extensions (e.g. Form, SectionCode, ItemNumber, ServiceAssignment, SessionAnnexB, ParameterV40), each pointing back to its ALIS field.


### Examples of mapping sample ALIS XML Files to FHIR

The table below lists each ALIS XML Visit example on the left and its corresponding ChargeItem(s) on the right.

<div style="width: 100%; display: flex"> 
{% sql SELECT '[' || v.id || '](Binary-' || v.id || '.html)' as "Visit", GROUP_CONCAT('[' || c.id || '](ChargeItem-' || c.id || '.html)', ' ') as "ChargeItems" FROM Resources v LEFT JOIN Resources c ON c.Type = 'ChargeItem' AND (c.id = 'ChargeItem' || substr(v.id, 6) OR c.id LIKE 'ChargeItem' || substr(v.id, 6) || '-%') WHERE v.Type = 'Binary' AND v.id LIKE 'Visit%' GROUP BY v.id %}
</div>
     
