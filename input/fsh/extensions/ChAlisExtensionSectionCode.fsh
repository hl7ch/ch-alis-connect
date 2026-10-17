Extension: ChAlisExtensionSectionCode
Id: ch-alis-connect-ext-sectioncode
Title: "CH ALIS Extension SectionCode"
Description: "This extension describes the SectionCode."
Context: ChargeItem
* . ^short = "CH ALIS Extension SectionCode"
* url only uri
* valueCoding 1..
* valueCoding from SwissMedicalSpecialities (extensible)
* valueCoding ^binding.description = "Extensible: the SwissMedicalSpecialities CodeSystem is a fragment of the 'Reglement Fachbereiche inkl. Liste der Fachbereiche' and only lists the codes referenced in this guide. Other codes from the Reglement Fachbereiche may be used."
