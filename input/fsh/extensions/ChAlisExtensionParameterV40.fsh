Extension: ChAlisExtensionParameterV40
Id: ch-alis-connect-ext-parameterv40
Title: "CH ALIS Extension ParameterV40"
Description: "This extension describes the ParameterV40 with ParamTyp and ParamValue."
Context: ChargeItem
* . ^short = "CH ALIS Extension ParamV40"
* extension contains
    ParamTyp 0..1 and
    ParamValue 0..1
* extension[ParamTyp] only Extension
* extension[ParamTyp] ^short = "ParamTyp"
* extension[ParamTyp].url only uri
* extension[ParamTyp].valueCodeableConcept 1..
* extension[ParamTyp].valueCodeableConcept only CodeableConcept
* extension[ParamTyp].valueCodeableConcept ^short = "ParamTyp"
* extension[ParamTyp].valueCodeableConcept.coding from ChAlisParamTyp (required)
* extension[ParamTyp].valueCodeableConcept.coding.system 1..
* extension[ParamTyp].valueCodeableConcept.coding.code 1..
* extension[ParamValue] only Extension
* extension[ParamValue] ^short = "ParamValue"
* extension[ParamValue].url only uri
* extension[ParamValue].valueString 1..
* extension[ParamValue].valueString only string
* extension[ParamValue].valueString ^short = "ParamValue"
* url only uri