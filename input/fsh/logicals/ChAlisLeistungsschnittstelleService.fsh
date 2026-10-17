Logical: ChAlisLeistungsschnittstelleService
Parent: $Base
Id: Service
Title: "CH ALIS Leistungsschnittstelle - Service"
Description: "This logical model describes the Service of 'Leistungsschnittstelle ALIS Version 5.1'."
* ^extension.url = "http://hl7.org/fhir/tools/StructureDefinition/xml-namespace"
* ^extension.valueUri = "noNamespace"
* . ^definition = "3, Leistung, Leistungen stehen zum Patient im Verhltnis 1:N"
* transaction 0..1 string "Optional, only required for possible value delete" "3.1, Transaktion, Alphanum., Attribut im Knoten „Leistung“, Kennzeichen der Transaktion (insert, update, delete), Optional"
* transaction insert XmlName(Transaction)
* transaction ^representation = #xmlAttr
* serviceDate 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/DateTime "3.2, Leistungs - Datum, XML-Format Datetime, Datum, Zeit der Leistungserbringung"
* serviceDate insert XmlName(ServiceDate)
* sessionID 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.3, Sitzung, Alphanum. Max. 64 Zeichen, Verwendung nur wenn SessionIDSectionB 3.15 nicht verwendet wird, 1 – n / Tag"
* sessionID insert XmlName(SessionID)
* orderID 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.4, Auftragsnummer, Max. 64 Zeichen, GUID (global universal identification) Alphanum., jeweils auf ebene Leistung mitsenden), Optional"
* orderID insert XmlName(OrderID)
* orderDate 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/DateTime "3.5 (*) Datum, Zeit des Auftrags für Laborleistungen falls nicht Leistungszuordnung gemäss Tarifvertrag Anhang B, Kapitel 4"
* orderDate insert XmlName(OrderDate)
* referrerID 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.6, Auftraggebende Kostenstelle, Max. 50 Zeichen, Der Empfänger bestimmt die auftraggebende Kostenstelle, Optional"
* referrerID insert XmlName(ReferrerID)
* serviceType 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.7, Katalog, 20 Zeichen, Spezifikation, Zwischen den Partnern zu vereinbaren"
* serviceType insert XmlName(ServiceType)
* serviceItem 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.8, Tarifposition, Alphanum. 20 Zeichen, Nummer (Identifikation der Leistung, LKAAT, AL, interner Katalog), Obligatorisch"
* serviceItem insert XmlName(ServiceItem)
* form 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.9, Formular, Alphanum. 20 Zeichen, Text, Formularbezeichnung, Optional"
* form insert XmlName(Form)
* enteredDateTime 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/DateTime "3.10, Erfassungsdatum, XML-Format Datetime, Datum, Zeit der Erfassung der Leistungserfassung, Optional"
* enteredDateTime insert XmlName(EnteredDateTime)
* providerID 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.11, Erbringende Organisation, Kostenstelle / Organisation; Text oder ID, Zwischen den Partnern zu vereinbaren"
* providerID insert XmlName(ProviderID)
* sectionCode 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.12 (*), Fachbereich, Alphanum, Max. 9 Zeichen, Optional, Fachbereich gemäss OAAT Reglement Fachbereiche"
* sectionCode insert XmlName(SectionCode)
* enteredBy 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.13, Erfasser, Text oder ID,"
* enteredBy insert XmlName(EnteredBy)
* itemNumber 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.14, Laufnummer, Alphanum. Max. 64 Zeichen, Wird jeder erbrachten Leistung mitgegeben, Optional"
* itemNumber insert XmlName(ItemNumber)
* refItemNumber 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.15, Referenz Laufnummer zu Hauptleistung, Format von Pos. 3.11, Nur bei Nebenleistungen notwendig, Optional"
* refItemNumber insert XmlName(RefItemNumber)
* quantity 1..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Decimal "3.16, Anzahl, Numerisch (Dezimal, d.h. Nachkommastellen sind möglich), eine negative Leistung ist möglich (+ / -), gebrochene Werte müssen beim Import in Systeme die nur ganzzahlige Mengen akzeptieren mit dem Wert aus dem Parameter <NumberofParticipants> auf eine ganze Zahl umgerechnet werden, Obligat; negative Werte sind zu vereinbaren"
* quantity insert XmlName(Quantity)
* tPValue 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Decimal "3.17 (*) Taxpunktwert, Numerisch (Dezimal), TP-Wert der Leistung	Optional"
* tPValue insert XmlName(TPValue)
* serviceItemErrorCode 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Text "3.18, Fehlercode, Alphanum., Fehlertabelle bei unbekanntem Feldinhalt, inkorrekten Werten etc., Optional"
* serviceItemErrorCode insert XmlName(ServiceItemErrorCode)
* sessionSectionB 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/SessionSectionB "3.19 (*) Sitzungsinfo nach Anhang B des Tarifs (tarifarische Sitzung) Verwendung nur wenn SessionID 3.2 nicht verwendet wird"
* sessionSectionB insert XmlName(SessionSectionB)
* diagnosis 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/Diagnosis "3.20 (*) Diagnose, Optional"
* diagnosis insert XmlName(Diagnosis)
* serviceAssignment 0..1 http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ServiceAssignment "3.21 (*) Leistungszuordnung Zuordnung von Labor-, Pathologie- oder Berichtsleistungen gemäss Tarifvertrag Anhang B, Kapitel 4"
* serviceAssignment insert XmlName(ServiceAssignment)
* personV40 0..* http://fhir.ch/ig/ch-alis-connect/StructureDefinition/PersonV40 "3.22, PersonV40, Optional (0,N)"
* personV40 insert XmlName(PersonV40)
* parameterV40 0..* http://fhir.ch/ig/ch-alis-connect/StructureDefinition/ParameterV40 "4, ParameterV40, Optional (0,N)"
* parameterV40 insert XmlName(ParameterV40)
