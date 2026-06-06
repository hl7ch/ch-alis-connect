Logical: ChAlisLeistungsschnittstellePersonV40
Parent: $Base
Id: PersonV40
Title: "CH ALIS Leistungsschnittstelle - PersonV40"
Description: "This logical model describes the PersonV40 of 'Leistungsschnittstelle ALIS Version 5.1'."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "3.22, PersonV40	Optional (0,N)"
* PersonTyp 1..1 string "3.22.1	PersonTyp	Alphanum.		Obligatorisch"
* PersonTyp ^representation = #xmlAttr
* PersonID 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.22.2	PersonID Alphanum.Obligatorisch"