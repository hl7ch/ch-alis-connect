Mapping: alis-for-ChAlisExtensionServiceAssignment
Id: alis
Title: "ALIS Mapping"
Description: "ALIS Mapping"
Source: ChAlisExtensionServiceAssignment
Target: "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ServiceAssignment"
* extension[OrderingProviderID].valueString -> "OrderingProviderID"
* extension[OrderSectionCode].valueCoding -> "OrderSectionCode"
* extension[OrderDate].valueDateTime -> "OrderDate"
* extension[FollowUpOrder].valueBoolean -> "FollowUpOrder"
