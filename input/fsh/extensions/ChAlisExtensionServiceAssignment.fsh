Extension: ChAlisExtensionServiceAssignment
Id: ch-alis-connect-ext-serviceassignment
Title: "CH ALIS Extension ServiceAssignment"
Description: "This extension describes ServiceAssignment"
Context: ChargeItem
* . ^short = "CH ALIS Extension ServiceAssignment"
* extension contains
    OrderingProviderID 0..1 and
    OrderSectionCode 0..1 and
    OrderDate 0..1 and
    FollowUpOrder 0..1
* extension[OrderingProviderID] only Extension
* extension[OrderingProviderID] ^short = "OrderingProviderID"
* extension[OrderingProviderID].url only uri
* extension[OrderingProviderID].valueString 1..
* extension[OrderingProviderID].valueString only string
* extension[OrderingProviderID].valueString ^short = "OrderingProviderID"
* extension[OrderSectionCode] only Extension
* extension[OrderSectionCode] ^short = "OrderSectionCode"
* extension[OrderSectionCode].url only uri
* extension[OrderSectionCode].valueCoding 1..
* extension[OrderSectionCode].valueCoding from SwissMedicalSpecialities (required)
* extension[OrderDate] only Extension
* extension[OrderDate] ^short = "OrderDate"
* extension[OrderDate].url only uri
* extension[OrderDate].valueDateTime 1..
* extension[OrderDate].valueDateTime only dateTime
* extension[OrderDate].valueDateTime ^short = "OrderDate"
* extension[OrderDate] only Extension
* extension[FollowUpOrder] ^short = "FollowUpOrder"
* extension[FollowUpOrder].url only uri
* extension[FollowUpOrder].valueBoolean 1..
* extension[FollowUpOrder].valueBoolean only boolean
* extension[FollowUpOrder].valueBoolean ^short = "FollowUpOrder"
* url only uri