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
* subject only Reference(ChAlisPatient)
* subject ^short = "Patient"
* subject ^type.aggregation = #contained
* subject.reference 1..
* bodySite 0..1 // TODO add ValueSet Binding left right both
* recordedDate 0..1