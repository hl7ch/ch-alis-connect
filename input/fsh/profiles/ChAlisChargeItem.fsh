Profile: ChAlisChargeItem
Parent: ChargeItem
Id: ch-alis-connect-chargeitem
Title: "CH ALIS ChargeItem Profile"
Description: "Base definition for the ChargeItem resource in the context of ALIS-Connect."
* . ^short = "CH ALIS ChargeItem"
* contained 2..
* contained ^short = "Contained Resources (Patient, Encounter, Condition)"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ChAlisExtensionItemNumber named ItemNumber 0..1 and
    ChAlisExtensionRefItemNumber named RefItemNumber 0..1 and
    ChAlisExtensionSessionId named SessionID 0..1 and
    ChAlisExtensionOrderId named OrderID 0..1 and
    ChAlisExtensionOrderDate named OrderDate 0..1 and
    ChAlisExtensionSectionCode named SectionCode 0..1 and
    ChAlisExtensionForm named Form 0..1 and
    ChAlisExtensionTPValue named TPValue 0..1 and
    ChAlisExtensionSessionAnnexB named SessionAnnexB 0..1 and
    ChAlisExtensionServiceAssignment named ServiceAssignment 0..1 and
    ChAlisExtensionServiceItemErrorCode named ServiceItemErrorCode 0..1 and
    ChAlisExtensionParameterV40 named ParameterV40 0..* and
    $ch-ext-indication-code named SLIndicationCode 0..*
* extension[ItemNumber] ^short = "ItemNumber"
* extension[RefItemNumber] ^short = "RefItemNumber"
* extension[SessionID] ^short = "SessionID"
* extension[OrderID] ^short = "OrderID"
* extension[OrderDate] ^short = "OrderDate"
* extension[SectionCode] ^short = "SectionCode"
* extension[TPValue] ^short = "TPValue"
* extension[SessionAnnexB] ^short = "SessionAnnexB"
* extension[Form] ^short = "Form"
* extension[ParameterV40] ^short = "ParameterV40"
* extension[ServiceAssignment] ^short = "ServiceAssignment"
* extension[ServiceItemErrorCode] ^short = "ServiceItemErrorCode"
* extension[SLIndicationCode] ^short = "ParameterV40: SLIndicationCode"
* status ^short = "billable | not-billable"
* code.coding 1..
* code.coding.system 1..
* code.coding.system ^short = "ServiceType"
* code.coding.code 1..
* code.coding.code ^short = "ServiceItem"
* subject only Reference(ChAlisPatient)
* subject ^short = "Patient"
* subject ^type.aggregation = #contained
* subject.reference 1..
* context 1..
* context only Reference(ChAlisEncounter)
* context ^short = "Encounter"
* context ^type.aggregation = #contained
* context.reference 1..
* occurrenceDateTime 1..
* occurrenceDateTime ^short = "ServiceDate"
* performer ^short = "PersonV40"
* performer.function 1..
* performer.function.coding 1..
* performer.function.coding from ChAlisPersonTyp (required)
* performer.function.coding.system 1..
* performer.function.coding.code 1..
* performer.function.coding.code ^short = "PersonTyp"
* performer.actor.display 1..
* performer.actor.display ^short = "PersonID"
* performingOrganization.display 1..
* performingOrganization.display ^short = "ProviderID"
* costCenter.display 1..
* costCenter.display ^short = "ReferrerID"
* quantity 1..
* quantity.value 1..
* quantity.value ^short = "Quantity"
* priceOverride.value 1..
* priceOverride.value ^short = "ParameterV40: Amount"
* enterer.display 1..
* enterer.display ^short = "EnteredBy"
* enteredDate ^short = "EnteredDateTime"
* supportingInformation only Reference($bmi)
* supportingInformation ^short = "ParameterV40: BMI"
* supportingInformation ^type.aggregation = #contained
* supportingInformation.reference 1..