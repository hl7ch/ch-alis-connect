Logical: ChAlisLeistungsschnittstelleParameterV40
Parent: $Base
Id: ParameterV40
Title: "CH ALIS Leistungsschnittstelle - ParameterV40"
Description: "This logical model describes the ParameterV40 of 'Leistungsschnittstelle ALIS Version 5.1'."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "4, ParameterV40, Optional (0,N)"
* ParamTyp 1..1 string "4.1, ParamTyp, Alphanum., Obligatorisch"
* ParamTyp ^representation = #xmlAttr
* ParamTyp ^comment = "Most ParamTyp values are carried in the generic ParameterV40 extension on ChargeItem. Some values are instead mapped to dedicated FHIR elements: BMI -> ChargeItem.supportingInformation, Billable -> ChargeItem.status, Amount -> ChargeItem.priceOverride.value, SLIndicationCode -> the CH Core indication-code extension. See the ParamTyp code system and the ParameterV40 Concept Map."
* ParamValue 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "4.2, ParamValue, Alphanum., Obligatorisch"