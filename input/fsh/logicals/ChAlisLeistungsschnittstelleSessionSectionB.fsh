Logical: ChAlisLeistungsschnittstelleSessionSectionB
Parent: $Base
Id: SessionSectionB
Title: "CH ALIS Leistungsschnittstelle - SessionSectionB"
Description: "This logical model describes the Treatment of 'Leistungsschnittstelle ALIS Version 5.1'."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "3.19 (*)	Sitzung Anhang B"
* SessionIDSectionB 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.19.1 (*)	SitzungsID	GUID	Muss für Leistungen im Rahmen einer Sitzung gemäss Anhang B abgefüllt werden. Wird das Feld verwendet, müssen ALLE Leistungen zur Sitzung mit der gleichen GUID übermittelt werden.	Optional	SessionIDSectionB"
* AssignedSessionSectionB 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.19.2 (*)	Referenz auf Sitzung	GUID	Muss für Leistungen, die gemäss Anhang B Kap 4 zugeordnet werden sollen, befüllt sein.	Optional	AssignedSessionSectionB"