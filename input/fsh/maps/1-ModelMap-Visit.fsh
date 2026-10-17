// ALIS XML logical model -> FHIR profile mapping (transform direction: ALIS XML -> FHIR).
// Source codes are element ids of the logical model, target codes are element ids of the
// FHIR profile. Checked against input/fsh/mappings/alis-for-* and maps/Alis51toBundle.map.

Instance: Alis2FhirVisit
InstanceOf: ConceptMap
Title: "ALIS Visit to FHIR Mapping"
Description: "Mapping of the ALIS Visit logical model to the FHIR Encounter, Patient and ChargeItem profiles."
Usage: #definition
* status = #active
* experimental = false
* name = "Alis2FhirVisit"
* title = "ALIS Visit to FHIR Mapping"

// Visit -> CH ALIS Encounter

* group[0].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Visit"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-encounter"
* group[=].element[0].code = #Visit
* group[=].element[=].target.code = #Encounter
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Visit.visitNumber
* group[=].element[=].target.code = #Encounter.identifier.value
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Visit.terminationVisit
* group[=].element[=].target.code = #Encounter.extension:Termination
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Visit.terminationReason
* group[=].element[=].target.code = #Encounter.extension:Termination
* group[=].element[=].target.equivalence = #equivalent

// Visit -> CH ALIS Patient
* group[+].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Visit"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-patient"
* group[=].element[0].code = #Visit.patientID
* group[=].element[=].target.code = #Patient.identifier:LocalPid.value
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Visit.patientName
* group[=].element[=].target.code = #Patient.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Visit.patientGivenName
* group[=].element[=].target.code = #Patient.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Visit.patientGender
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Visit.patientBirthDate
* group[=].element[=].target.code = #Patient.birthDate
* group[=].element[=].target.equivalence = #equivalent

// Visit -> CH ALIS ChargeItem (each Service becomes one ChargeItem)
* group[+].source = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Visit"
* group[=].target = "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ch-alis-connect-chargeitem"
* group[=].element[0].code = #Visit.service
* group[=].element[=].target.code = #ChargeItem
* group[=].element[=].target.equivalence = #equivalent
