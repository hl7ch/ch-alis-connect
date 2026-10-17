// ALIS XML logical model -> FHIR profile mapping (transform direction: ALIS XML -> FHIR).
// Checked against input/fsh/mappings/alis-for-ChAlisCondition.fsh,
// alis-for-ChAlisExtensionDiagnosisConfidential.fsh and maps/Alis51toBundle.map.

Instance: Alis2FhirDiagnosis
InstanceOf: ConceptMap
Title: "ALIS Diagnosis to FHIR Mapping"
Description: "Mapping of the ALIS Diagnosis logical model to the FHIR Condition profile."
Usage: #definition
* status = #active
* experimental = false
* name = "Alis2FhirDiagnosis"
* title = "ALIS Diagnosis to FHIR Mapping"

// Diagnosis -> CH ALIS Condition

* group[0].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Diagnosis"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-condition"
* group[=].element[0].code = #Diagnosis.DiagnosisCode
* group[=].element[=].target.code = #Condition.code.coding.code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Diagnosis.DiagnosisSystem
* group[=].element[=].target.code = #Condition.code.coding.system
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Diagnosis.DiagnosisVersion
* group[=].element[=].target.code = #Condition.code.coding.version
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Diagnosis.DiagnosisConfidential
* group[=].element[=].target.code = #Condition.extension:DiagnosisConfidential
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Diagnosis.OnSetDateTime
* group[=].element[=].target.code = #"Condition.onset[x]:onsetDateTime"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Diagnosis.Laterality
* group[=].element[=].target.code = #Condition.bodySite
* group[=].element[=].target.equivalence = #equivalent
