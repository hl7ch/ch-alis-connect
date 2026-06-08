### Introduction

This Implementation Guide is provided to define a Mapping between the HL7 FHIR<sup>&reg;&copy;</sup> standard and the ALIS XML 5.1 standard provided by [ALIS Connect](https://www.alis-connect.ch/). For over 20 years, ALIS-Connect has represented for a reliable and standardized exchange of medical service data. The established interface standard ensures interoperability, security and efficiency in digital healthcare. Supported by a committed network of experts, ALIS-Connect stands for binding standardization and certified quality. The certification ensures that software solutions are correctly integrated and continuously developed further.

#### The ALIS Interface

[ALIS](https://www.alis-connect.ch/) is an XML-based standard interface for the electronic transmission of services between IT systems in the hospital and healthcare sector. It supports in particular the data exchange between service-recording, clinical, radiology and other specialist systems on one side and billing systems on the other. In addition, ALIS enables the structured transmission of coding data according to the differing requirements of service providers, insurers and public authorities. In a file-based exchange, one or more Visits are documented, each grouping the patient case together with its individual services.

[ALIS 5.1](https://www.alis-connect.ch/) supports TARDOC and outpatient flat rates (ambulante Pauschalen), the national outpatient tariffs managed by [OAAT-OTMA AG](https://www.oaat-otma.ch/) (Organisation ambulante Arzttarife / Organisation des tarifs médicaux ambulatoires), the organization responsible for maintaining and further developing these tariffs. The version enables the transmission of additional information required for the correct tariff representation and billing. This includes diagnosis information at the level of the individual service, session information according to Annex B of the tariff, and the assignment of laboratory, pathology or report services in line with the tariff agreement. ALIS 5.1 thereby establishes the basis for representing the extended requirements of TARDOC and outpatient flat rates in a standardized, traceable and interoperable way between the participating systems.

#### Mapping to FHIR financial and administrative resources

HL7 FHIR provides a dedicated set of [financial and administrative resources](https://www.hl7.org/fhir/financial-module.html) for representing billing and accounting information, such as `Account`, `Invoice`, `Claim` and `ChargeItem`. Among these, the `ChargeItem` resource fits closest to the information contained in a service within an ALIS Visit: it describes a single billable item — the service that was performed, the products and codes involved, the quantity and the context (patient, encounter and performer) — and is intended to be aggregated for subsequent billing. For this reason the mapping in this guide centers on `ChargeItem`, where each ALIS service of a Visit is represented as one `ChargeItem`, transmitted together within a single transaction Bundle (see [Mapping](mapping.html)).

<div markdown="1" class="stu-note">

This implementation guide is under informative ballot by [HL7 Switzerland](https://www.hl7.ch/de/) until September 30th, 2026 midnight. Please add your feedback via the ‘Propose a change’-link in the footer on the page where you have comments.

[Significant changes, open and closed issues](changelog.html)

</div>

**Download**: You can download this implementation guide in npm format from [here](package.tgz).

### Scope
This document presents ALIS-connect use concepts defined via FHIR processable artefacts:

* [Logical Models](logicalmodels.html) - is the mapping of the ALIS-Connect XML specification
* [Maps](maps.html) - are defined rules that describe how the ALIS-Connect XML structure relates to the FHIR structure
* [Profiles](profiles.html) - are useful constraints of FHIR resources for ALIS-connect use
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed ALIS-connect concepts
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for ALIS-connect context

### Governance
This implementation guide is managed by [ALIS-Connect](https://www.alis-connect.ch/).

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [ALIS-Connect technical committee](https://www.alis-connect.ch/)
* [HL7 Switzerland](https://www.hl7.ch/)