Profile: ChAlisEncounter
Parent: CHCoreEncounter
Id: ch-alis-connect-encounter
Title: "CH ALIS Encounter Profile"
Description: "Base definition for the Encounter resource in the context of ALIS-Connect."
* . ^short = "CH ALIS Encounter"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains ChAlisExtensionTermination named Termination 0..1
// FIXME * identifier ^slicing.discriminator.type = #pattern
// * identifier ^slicing.discriminator.path = "$this"
// * identifier ^slicing.rules = #open
// * identifier[VisitNumber] 1..1
// * identifier[VisitNumber] ^patternIdentifier.type = $v2-0203#VN
// * identifier.system[VisitNumber] 1..
// * identifier.value[VisitNumber] 1..
// * identifier.value[VisitNumber] ^short = "VisitNumber"
* status = #finished (exactly)
* status ^short = "finished"
* class = $v3-ActCode#IMP
* class ^short = "Inpatient encounter"
* subject only Reference(ChAlisPatient)
* subject ^short = "Patient"
* subject ^type.aggregation = #contained
* subject.reference 1..
* diagnosis ^short = "Condition"
* diagnosis.condition only Reference(ChAlisCondition)
* diagnosis.condition ^type.aggregation = #contained
* diagnosis.condition.reference 1..