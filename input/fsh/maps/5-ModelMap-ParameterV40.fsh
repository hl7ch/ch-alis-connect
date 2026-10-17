// ALIS XML logical model -> FHIR profile mapping (transform direction: ALIS XML -> FHIR).
// ParameterV40 is nested in Service and rendered into the ChargeItem extension ParameterV40.
// Checked against input/fsh/mappings/alis-for-ChAlisExtensionParameterV40.fsh and maps/Alis51toBundle.map.

Instance: Alis2FhirParameterV40
InstanceOf: ConceptMap
Title: "ALIS ParameterV40 to FHIR Mapping"
Description: "Mapping of the ALIS ParameterV40 logical model to the FHIR ParameterV40 extension (on ChargeItem). Specific ParamTyp values (BMI, Billable, Amount, SLIndicationCode) are mapped to dedicated ChargeItem elements instead of the generic ParameterV40 extension."
Usage: #definition
* status = #active
* experimental = false
* name = "Alis2FhirParameterV40"
* title = "ALIS ParameterV40 to FHIR Mapping"

// ParameterV40 -> ch-alis-connect-ext-parameterv40


* group[0].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ParameterV40"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-ext-parameterv40"
* group[=].element[0].code = #ParameterV40.paramTyp
* group[=].element[=].target.code = #"Extension.extension:ParamTyp.value[x]:valueCodeableConcept"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ParameterV40.paramValue
* group[=].element[=].target.code = #"Extension.extension:ParamValue.value[x]:valueString"
* group[=].element[=].target.equivalence = #equivalent

// Specific ParamTyp values are mapped to dedicated ChargeItem elements instead of the generic ParameterV40 extension.
* group[+].source = "http://fhir.ch/ig/ch-alis-connect/CodeSystem/ch-alis-connect-paramtyp"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-chargeitem"
* group[=].element[0].code = #BMI
* group[=].element[=].target.code = #ChargeItem.supportingInformation
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Billable
* group[=].element[=].target.code = #ChargeItem.status
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Amount
* group[=].element[=].target.code = #ChargeItem.priceOverride.value
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SLIndicationCode
* group[=].element[=].target.code = #ChargeItem.extension:SLIndicationCode
* group[=].element[=].target.equivalence = #equivalent
