CodeSystem: SwissMedicalSpecialties
Id: swiss-medical-specialties
Title: "Swiss Medical Specialties (Fachbereiche)"
Description: "Code system for Swiss medical specialty areas (Fachbereiche) used in ambulatory care settings. Based on the regulation document 'Reglement Fachbereiche inkl. Liste der Fachbereiche' valid from January 1, 2026. Declared as fragment: only the codes actually referenced in this IG are listed here."
* ^url = "http://fhir.ch/ig/ch-alis-connect/CodeSystem/swiss-medical-specialties"
* ^version = "2026.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-01-01"
* ^publisher = "OAAT AG"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #fragment
* ^property[0].code = #notSelectable
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].description = "Selektierbar"
* ^property[=].type = #boolean

* #M400 "Pädiatrie"
* #M400 ^property[0].code = #notSelectable
* #M400 ^property[0].valueBoolean = true
* #M400 #M400.04 "Neonatologie"

* #M600 "Ophthalmologie"
* #M600 ^property[0].code = #notSelectable
* #M600 ^property[0].valueBoolean = true
* #M600 #M600.01 "Ophthalmologie"

* #M850 "Medizinische Radiologie"
* #M850 ^property[0].code = #notSelectable
* #M850 ^property[0].valueBoolean = true
* #M850 #M850.04 "Radiologie"

* #M990 "Weitere Tätigkeitsgebiete"
* #M990 ^property[0].code = #notSelectable
* #M990 ^property[0].valueBoolean = true
* #M990 #M990.06 "Labor"
