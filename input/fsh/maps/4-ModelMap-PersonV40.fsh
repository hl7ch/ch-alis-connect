// ALIS XML logical model -> FHIR profile mapping (transform direction: ALIS XML -> FHIR).
// PersonV40 is nested in Service and rendered into ChargeItem.performer.
// Checked against input/fsh/mappings/alis-for-ChAlisChargeItem.fsh and maps/Alis51toBundle.map.

Instance: Alis2FhirPersonV40
InstanceOf: ConceptMap
Title: "ALIS PersonV40 to FHIR Mapping"
Description: "Mapping of the ALIS PersonV40 logical model to the FHIR ChargeItem.performer element."
Usage: #definition
* status = #active
* experimental = false
* name = "Alis2FhirPersonV40"
* title = "ALIS PersonV40 to FHIR Mapping"

// PersonV40 -> CH ALIS ChargeItem.performer

* group[0].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/PersonV40"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-chargeitem"
* group[=].element[0].code = #PersonV40
* group[=].element[=].target.code = #ChargeItem.performer
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonV40.personTyp
* group[=].element[=].target.code = #ChargeItem.performer.function.coding.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PersonV40.personID
* group[=].element[=].target.code = #ChargeItem.performer.actor.identifier.value
* group[=].element[=].target.equivalence = #equivalent
