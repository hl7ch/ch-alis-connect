Logical: ChAlisLeistungsschnittstelleServiceAssignment
Parent: $Base
Id: ServiceAssignment
Title: "CH ALIS Leistungsschnittstelle - ServiceAssignment"
Description: "This logical model describes the ServiceAssignment of 'Leistungsschnittstelle ALIS Version 5.1'."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "3.21(*) 	Leistungszuordnung		Zuordnung von Labor-, Pathologie- oder Berichtsleistungen gemäss Tarifvertrag Anhang B, Kapitel 4	Optional	ServiceAssignment"
* OrderingProviderID 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.21.1 (*)	Auftraggeber 	Alphanum.	OE	Optional	OrderingProviderID"
* OrderSectionCode 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.21.2 (*)	Auftraggeber Fachbereich	Alphanum, Max. 9 Zeichen	Fachbereich gemäss OAAT Reglement Fachbereiche	Optional	OrderSectionCode"
* OrderDate 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/DateTime "3.21.3 (*)	Auftragsdatum	XML-Format Datetime	Auftragsdatum bzw. bei Folgeauftrag ohne Sitzung Datum der Sitzung der Probeentnahme oder Datum der letzten im Bericht beschriebenen Sitzung.	Optional	OrderDate"
* FollowUpOrder 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Boolean "3.21.4 (*)	Folgeauftrag	Boolean	Flag für Anzeige Folgeauftrag	Optional	FollowUpOrder"
