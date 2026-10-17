// The logical models mirror the ALIS XML, whose element and attribute names start with an
// upper case letter. FHIR element names have to start with a lower case letter (eld-20), so the
// elements are named in lowerCamelCase and carry the ALIS XML name in the xml-name extension.
RuleSet: XmlName(name)
* ^extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/xml-name"
* ^extension[=].valueString = "{name}"
