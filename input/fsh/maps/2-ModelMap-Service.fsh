// ALIS XML logical model -> FHIR profile mapping (transform direction: ALIS XML -> FHIR).
// Checked against input/fsh/mappings/alis-for-ChAlisChargeItem.fsh and maps/Alis51toBundle.map.

Instance: Alis2FhirService
InstanceOf: ConceptMap
Title: "ALIS Service to FHIR Mapping"
Description: "Mapping of the ALIS Service logical model to the FHIR ChargeItem and Condition profiles."
Usage: #definition
* status = #active
* experimental = false
* name = "Alis2FhirService"
* title = "ALIS Service to FHIR Mapping"

// Service -> CH ALIS ChargeItem


* group[0].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Service"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-chargeitem"
* group[=].element[0].code = #Service
* group[=].element[=].target.code = #ChargeItem
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.serviceDate
* group[=].element[=].target.code = #"ChargeItem.occurrence[x]:occurrenceDateTime"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.sessionID
* group[=].element[=].target.code = #ChargeItem.extension:SessionID
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.orderID
* group[=].element[=].target.code = #ChargeItem.extension:OrderID
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.orderDate
* group[=].element[=].target.code = #ChargeItem.extension:OrderDate
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.referrerID
* group[=].element[=].target.code = #ChargeItem.costCenter.identifier.value
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.serviceType
* group[=].element[=].target.code = #ChargeItem.code.coding.system
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.serviceItem
* group[=].element[=].target.code = #ChargeItem.code.coding.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.form
* group[=].element[=].target.code = #ChargeItem.extension:Form
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.enteredDateTime
* group[=].element[=].target.code = #ChargeItem.enteredDate
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.providerID
* group[=].element[=].target.code = #ChargeItem.performingOrganization.identifier.value
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.sectionCode
* group[=].element[=].target.code = #ChargeItem.extension:SectionCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.enteredBy
* group[=].element[=].target.code = #ChargeItem.enterer.display
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.itemNumber
* group[=].element[=].target.code = #ChargeItem.extension:ItemNumber
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.refItemNumber
* group[=].element[=].target.code = #ChargeItem.extension:RefItemNumber
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.quantity
* group[=].element[=].target.code = #ChargeItem.quantity.value
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.tPValue
* group[=].element[=].target.code = #ChargeItem.extension:TPValue
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.sessionSectionB
* group[=].element[=].target.code = #ChargeItem.extension:SessionAnnexB
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.serviceAssignment
* group[=].element[=].target.code = #ChargeItem.extension:ServiceAssignment
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.serviceItemErrorCode
* group[=].element[=].target.code = #ChargeItem.extension:ServiceItemErrorCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.personV40
* group[=].element[=].target.code = #ChargeItem.performer
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.parameterV40
* group[=].element[=].target.code = #ChargeItem.extension:ParameterV40
* group[=].element[=].target.equivalence = #equivalent

// Service.Diagnosis -> CH ALIS Condition (rendered as a contained Condition, referenced from Encounter.diagnosis)
* group[+].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Service"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-condition"
* group[=].element[0].code = #Service.diagnosis
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.equivalence = #equivalent
