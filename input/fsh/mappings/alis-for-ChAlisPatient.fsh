Mapping: alis-for-ChAlisPatient
Id: alis
Title: "ALIS Mapping"
Description: "ALIS Mapping"
Source: ChAlisPatient
Target: "http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Visit"
* identifier[LocalPid].value -> "PatientID"
* name.family -> "PatientName"
* name.given -> "PatientGivenName"
* gender -> "PatientGender"
* birthDate -> "PatientBirthDate"
