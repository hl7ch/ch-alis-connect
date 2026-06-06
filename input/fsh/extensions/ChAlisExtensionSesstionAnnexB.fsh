Extension: ChAlisExtensionSessionAnnexB
Id: ch-alis-connect-ext-sessionannexb
Title: "CH ALIS Extension SessionAnnexB"
Description: "This extension describes SessionAnnexB"
Context: ChargeItem
* . ^short = "CH ALIS Extension ServiceAssignment"
* extension contains
    SessionIDSectionB 0..1 and
    AssignedSessionSectionB 0..1
* extension[SessionIDSectionB] only Extension
* extension[SessionIDSectionB] ^short = "SessionIDSectionB"
* extension[SessionIDSectionB].url only uri
* extension[SessionIDSectionB].valueUuid 1..
* extension[SessionIDSectionB].valueUuid only uuid
* extension[SessionIDSectionB].valueUuid ^short = "SessionIDSectionB"
* extension[AssignedSessionSectionB] only Extension
* extension[AssignedSessionSectionB] ^short = "AssignedSessionSectionB"
* extension[AssignedSessionSectionB].url only uri
* extension[AssignedSessionSectionB].valueUuid only uuid
* extension[AssignedSessionSectionB].valueUuid ^short = "AssignedSessionSectionB"
* url only uri