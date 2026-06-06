Profile: ChAlisPatient
Parent: CHCorePatient
Id: ch-alis-connect-patient
Title: "CH ALIS Patient Profile"
Description: "Base definition for the Patient resource in the context of ALIS-Connect."
* . ^short = "CH ALIS Patient"
* identifier[LocalPid] 1..
* identifier[LocalPid].value ^short = "PatientID"
* name ..1
* name.family ^short = "PatientName"
* name.given ..1
* name.given ^short = "PatientGivenName"
* gender ^short = "PatientGender"
* birthDate ^short = "PatientBirthDate"