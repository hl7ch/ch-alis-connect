// ALIS XML logical model -> FHIR profile mapping (transform direction: ALIS XML -> FHIR).
// ServiceAssignment is nested in Service and rendered into the ChargeItem extension ServiceAssignment.
// Checked against input/fsh/mappings/alis-for-ChAlisExtensionServiceAssignment.fsh and maps/Alis51toBundle.map.

Instance: Alis2FhirServiceAssignment
InstanceOf: ConceptMap
Title: "ALIS ServiceAssignment to FHIR Mapping"
Description: "Mapping of the ALIS ServiceAssignment logical model to the FHIR ServiceAssignment extension (on ChargeItem)."
Usage: #definition
* status = #active
* experimental = false
* name = "Alis2FhirServiceAssignment"
* title = "ALIS ServiceAssignment to FHIR Mapping"

// ServiceAssignment -> ch-alis-connect-ext-serviceassignment

* group[0].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ServiceAssignment"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-ext-serviceassignment"
* group[=].element[0].code = #ServiceAssignment.OrderingProviderID
* group[=].element[=].target.code = #"Extension.extension:OrderingProviderID.value[x]:valueString"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ServiceAssignment.OrderSectionCode
* group[=].element[=].target.code = #"Extension.extension:OrderSectionCode.value[x]:valueCoding"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ServiceAssignment.OrderDate
* group[=].element[=].target.code = #"Extension.extension:OrderDate.value[x]:valueDateTime"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ServiceAssignment.FollowUpOrder
* group[=].element[=].target.code = #"Extension.extension:FollowUpOrder.value[x]:valueBoolean"
* group[=].element[=].target.equivalence = #equivalent
