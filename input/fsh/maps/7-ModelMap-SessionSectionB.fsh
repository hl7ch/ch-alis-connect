// ALIS XML logical model -> FHIR profile mapping (transform direction: ALIS XML -> FHIR).
// SessionSectionB is nested in Service and rendered into the ChargeItem extension SessionAnnexB.
// Checked against input/fsh/mappings/alis-for-ChAlisExtensionSessionAnnexB.fsh and maps/Alis51toBundle.map.

Instance: Alis2FhirSessionSectionB
InstanceOf: ConceptMap
Title: "ALIS SessionSectionB to FHIR Mapping"
Description: "Mapping of the ALIS SessionSectionB logical model to the FHIR SessionAnnexB extension (on ChargeItem)."
Usage: #definition
* status = #active
* experimental = false
* name = "Alis2FhirSessionSectionB"
* title = "ALIS SessionSectionB to FHIR Mapping"

// SessionSectionB -> ch-alis-connect-ext-sessionannexb

* group[0].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/SessionSectionB"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-ext-sessionannexb"
* group[=].element[0].code = #SessionSectionB.sessionIDSectionB
* group[=].element[=].target.code = #"Extension.extension:SessionIDSectionB.value[x]:valueUuid"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SessionSectionB.assignedSessionSectionB
* group[=].element[=].target.code = #"Extension.extension:AssignedSessionSectionB.value[x]:valueUuid"
* group[=].element[=].target.equivalence = #equivalent
