Instance: ChAlisLateralityToSnomed
InstanceOf: ConceptMap
Title: "CH ALIS Laterality to SNOMED CT"
Description: "Maps the ALIS Diagnosis Laterality (l, r, b) to the SNOMED CT laterality qualifiers used in Condition.bodySite."
Usage: #definition
* status = #active
* experimental = false
* name = "ChAlisLateralityToSnomed"
* title = "CH ALIS Laterality to SNOMED CT"
* targetCanonical = Canonical(ChAlisLateralitySnomed)
* group[0].source = "http://fhir.ch/ig/ch-alis-connect/CodeSystem/ch-alis-connect-laterality"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #l
* group[=].element[=].display = "left"
* group[=].element[=].target.code = #7771000
* group[=].element[=].target.display = "Left"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #r
* group[=].element[=].display = "right"
* group[=].element[=].target.code = #24028007
* group[=].element[=].target.display = "Right"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #b
* group[=].element[=].display = "both"
* group[=].element[=].target.code = #51440002
* group[=].element[=].target.display = "Right and left"
* group[=].element[=].target.equivalence = #equivalent
