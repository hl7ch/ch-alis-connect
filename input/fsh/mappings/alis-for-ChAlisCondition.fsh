Mapping: alis-for-ChAlisCondition
Id: alis
Title: "ALIS Mapping"
Description: "ALIS Mapping"
Source: ChAlisCondition
Target: "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Diagnosis"
* code.coding.code -> "DiagnosisCode"
* code.coding.system -> "DiagnosisSystem"
* code.coding.version -> "DiagnosisVersion"
* extension[DiagnosisConfidential] -> "DiagnosisConfidential"
* onsetDateTime -> "OnSetDateTime"
* bodySite -> "Laterality"
