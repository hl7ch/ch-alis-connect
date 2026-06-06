Extension: ChAlisExtensionTermination
Id: ch-alis-connect-ext-termination
Title: "CH ALIS Extension Termination"
Description: "This extension describes the TerminationVisit and TerminationReason."
Context: Encounter
* . ^short = "CH ALIS Extension Termination"
* extension contains
    TerminationVisit 0..1 and
    TerminationReason 0..1
* extension[TerminationVisit] only Extension
* extension[TerminationVisit] ^short = "TerminationVisit"
* extension[TerminationVisit].url only uri
* extension[TerminationVisit].valueDate 1..
* extension[TerminationVisit].valueDate only date
* extension[TerminationVisit].valueDate ^short = "TerminationVisit"
* extension[TerminationReason] only Extension
* extension[TerminationReason] ^short = "TerminationReason"
* extension[TerminationReason].url only uri
* extension[TerminationReason].valueString 1..
* extension[TerminationReason].valueString only string
* extension[TerminationReason].valueString ^short = "TerminationReason"
* url only uri