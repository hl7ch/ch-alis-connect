Logical: ChAlisLeistungsschnittstelleVisit
Parent: $Base
Id: Visit
Title: "CH ALIS Leistungsschnittstelle - Visit"
Description: "This logical model describes the Visit of 'Leistungsschnittstelle ALIS Version 5.1'."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "2, Patient"
* visitNumber 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "2.1, Fall, Alphanum. Max. 40 Zeichen, FID = eindeutiger Schlüssel (ev. Kombination aus PID und lfd. Nr.), der FID ist eindeutig, Obligatorisch"
* visitNumber insert XmlName(VisitNumber)
* patientID 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "2.2, Patient.PID, Numerisch, Max. 20 Zeichen, PID, Optional"
* patientID insert XmlName(PatientID)
* patientName 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "2.3, Patient.Name, 50 Zeichen, Name, Optional"
* patientName insert XmlName(PatientName)
* patientGivenName 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "2.4, Patient.Vorname, 50 Zeichen, Vorname, Optional"
* patientGivenName insert XmlName(PatientGivenName)
* patientBirthDate 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Date "2.5, Patient.GebDat, XML-Format date, Geb.Datum, Optional"
* patientBirthDate insert XmlName(PatientBirthDate)
* patientGender 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "M|F" "2.6, Patient Geschlecht, 1 Zeichen, Geschlecht, Optional M,F"
* patientGender insert XmlName(PatientGender)
* terminationVisit 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Date "2.7, Fall Abschluss, XML-Format date, Optional"
* terminationVisit insert XmlName(TerminationVisit)
* terminationReason 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "2.8, Fall Abschlussgrund, Alphanum., Grunde des Fallabschlusses, Optional"
* terminationReason insert XmlName(TerminationReason)
* service 1..* http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Service "3, Leistung, Leistungen stehen zum Patient im Verhältnis 1:N"
* service insert XmlName(Service)