Logical: ChAlisLeistungsschnittstelleDiagnosis
Parent: $Base
Id: Diagnosis
Title: "CH ALIS Leistungsschnittstelle - Diagnosis"
Description: "This logical model describes the Diagnosis of 'Leistungsschnittstelle ALIS Version 5.1'."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "3.20 (*)	Diagnose Optional "
* DiagnosisCode 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.20.1 (*)	Diagnosecode	Alphanum.	Diagnosecode [mind. 2 Zeichen, ICDx 5 Zeichen - abhängig von vereinbarter Codeversion, Originalschreibweise mit Punkten etc.]	Obligatorisch"
* DiagnosisSystem 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.20.2 (*) Diagnosesystem	Alphanum.	CodeSystem der Diagnose z.B ICD, Tessinercode	Obligatorisch"
* DiagnosisVersion 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.20.3 (*)	Version	Alphanum.	Version des Codesystems z.B. ICD-GM 2023	Optional (Empfehlung: Version angeben)"
* DiagnosisConfidential 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Boolean "3.20.4 (*)	Vertraulichkeit	Boolean	Für XML 5.0, gemäss Forum Datenaustausch muss das ärztliche Personal über die Vertraulichkeit von Diagnosen entscheiden.	Optional"
* OnSetDateTime 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/DateTime "3.20.5 (*)	Datum der Diagnose	XML-Format Datetime	Datum der Diagnosestellung falls nicht gleich wie Datum der Leistungserbringung (3.)	Optional"
* Laterality 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "l|r|b" "3.20.6 (*) Seitigkeit	Alphanum.	Werte = l,r,b	Optional"
