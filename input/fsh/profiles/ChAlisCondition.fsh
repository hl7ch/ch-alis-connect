Profile: ChAlisCondition
Parent: Condition
Id: ch-alis-connect-condition
Title: "CH ALIS Condition Profile"
Description: "Base definition for the Condition resource in the context of ALIS-Connect."
* . ^short = "CH ALIS Condition"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ChAlisExtensionDiagnosisConfidential named DiagnosisConfidential 0..1 
* code.coding 1..
* code.coding.system ^short = "DiagCatType"
* code.coding.code 1..
* code.coding.code ^short = "DiagCode"
* code.coding.version ^short = "DiagnosisVersion"
* code.coding.version ^comment = "Version of the code system as published by its terminology server, e.g. 2024 for the ALIS DiagnosisVersion 'ICD-10-GM 2024' (http://fhir.de/CodeSystem/bfarm/icd-10-gm). In Switzerland, ICD-10-GM 2024 applies from 1 January 2025."
* subject only Reference(ChAlisPatient)
* subject ^short = "Patient"
* subject ^type.aggregation = #contained
* subject.reference 1..
* bodySite 0..1
* bodySite from ChAlisLateralitySnomed (extensible)
* bodySite ^short = "Laterality"
* bodySite ^comment = "ALIS Diagnosis Laterality (l, r, b), mapped to SNOMED CT with the ConceptMap ChAlisLateralityToSnomed: l = 7771000 |Left|, r = 24028007 |Right|, b = 51440002 |Right and left|."
* recordedDate 0..1