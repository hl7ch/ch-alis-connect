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
* group[=].element[+].code = #Service.ServiceDate
* group[=].element[=].target.code = #"ChargeItem.occurrence[x]:occurrenceDateTime"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.SessionID
* group[=].element[=].target.code = #ChargeItem.extension:SessionID
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.OrderID
* group[=].element[=].target.code = #ChargeItem.extension:OrderID
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.OrderDate
* group[=].element[=].target.code = #ChargeItem.extension:OrderDate
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ReferrerID
* group[=].element[=].target.code = #ChargeItem.costCenter.display
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ServiceType
* group[=].element[=].target.code = #ChargeItem.code.coding.system
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ServiceItem
* group[=].element[=].target.code = #ChargeItem.code.coding.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.Form
* group[=].element[=].target.code = #ChargeItem.extension:Form
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.EnteredDateTime
* group[=].element[=].target.code = #ChargeItem.enteredDate
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ProviderID
* group[=].element[=].target.code = #ChargeItem.performingOrganization.display
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.SectionCode
* group[=].element[=].target.code = #ChargeItem.extension:SectionCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.EnteredBy
* group[=].element[=].target.code = #ChargeItem.enterer.display
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ItemNumber
* group[=].element[=].target.code = #ChargeItem.extension:ItemNumber
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.RefItemNumber
* group[=].element[=].target.code = #ChargeItem.extension:RefItemNumber
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.Quantity
* group[=].element[=].target.code = #ChargeItem.quantity.value
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.TPValue
* group[=].element[=].target.code = #ChargeItem.extension:TPValue
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.SessionSectionB
* group[=].element[=].target.code = #ChargeItem.extension:SessionAnnexB
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ServiceAssignment
* group[=].element[=].target.code = #ChargeItem.extension:ServiceAssignment
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ServiceItemErrorCode
* group[=].element[=].target.code = #ChargeItem.extension:ServiceItemErrorCode
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.PersonV40
* group[=].element[=].target.code = #ChargeItem.performer
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Service.ParameterV40
* group[=].element[=].target.code = #ChargeItem.extension:ParameterV40
* group[=].element[=].target.equivalence = #equivalent

// Service.Diagnosis -> CH ALIS Condition (rendered as a contained Condition, referenced from Encounter.diagnosis)
* group[+].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Service"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-condition"
* group[=].element[0].code = #Service.Diagnosis
* group[=].element[=].target.code = #Condition
* group[=].element[=].target.equivalence = #equivalent
