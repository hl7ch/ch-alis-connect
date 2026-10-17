Logical: ChAlisLeistungsschnittstelleHeader
Parent: $Base
Id: Header
Title: "CH ALIS Leistungsschnittstelle - Header"
Description: "This logical model describes the Header of 'Leistungsschnittstelle ALIS Version 5.1', the root element of an ALIS XML file that carries the Visits."
* ^extension.url = "http://hl7.org/fhir/tools/StructureDefinition/xml-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "1, HeaderInformation"
* version 0..1 decimal "Optional according to specification, and required according to XSD" "1, Header-Attribut Version"
* version insert XmlName(Version)
* version ^representation = #xmlAttr
* noNamespaceSchemaLocation 0..1 string "xsi"
* noNamespaceSchemaLocation ^representation = #xmlAttr
* noNamespaceSchemaLocation ^extension.url = "http://hl7.org/fhir/tools/StructureDefinition/xml-namespace"
* noNamespaceSchemaLocation ^extension.valueUri = "http://www.w3.org/2001/XMLSchema-instance"
* receivingApplication 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.1, Empfänger, Alphanum. (30), Text, 3 stufig"
* receivingApplication insert XmlName(ReceivingApplication)
* receivingFacility 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.2, MandantenNr, Alphanum. (10), Mandantennummer des. Empfängers, 3 stufig"
* receivingFacility insert XmlName(ReceivingFacility)
* receivingServiceCode 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.3, Einrichtung, Alphanum. (30), Einrichtung des. Empfänger, 3 stufig"
* receivingServiceCode insert XmlName(ReceivingServiceCode)
* sendingApplication 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.4, Sender, Alphanum. (30), Text, 3 stufig"
* sendingApplication insert XmlName(SendingApplication)
* sendingFacility 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.5, MandantenNr, Alphanum. (10), Mandantennummer des Senders, 3 stufig"
* sendingFacility insert XmlName(SendingFacility)
* sendingServiceCode 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.6, Einrichtung, Alphanum. (30), Einrichtung des Sender, 3 stufig"
* sendingServiceCode insert XmlName(SendingServiceCode)
* messageControlID 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/UnsignedInt "1.7, Auftrags-ID, Numerisch, z.B. Batch- oder Stapelnummer"
* messageControlID insert XmlName(MessageControlID)
* headerErrorCode 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.8, Fehlercode, Alphanum., Fehlertabelle bei unbekanntem Feldinhalt, inkorrekten Werten etc., Optional"
* headerErrorCode insert XmlName(HeaderErrorCode)
* softwareReleaseNumber 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "1.9, Version Standardschnittstelle des exportierendes Systems, Alphanum. (30), Version der betriebenen Software des Senders, Optional"
* softwareReleaseNumber insert XmlName(SoftwareReleaseNumber)
* fileCreationDate 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/DateTime "1.10, Fileerstellungs-datum, Gem. XML-Standard datetime, Optional"
* fileCreationDate insert XmlName(FileCreationDate)
* visit 0..* http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Visit "2, Patient"
* visit insert XmlName(Visit)
