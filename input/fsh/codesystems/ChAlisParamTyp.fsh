CodeSystem: ChAlisParamTyp
Id: ch-alis-connect-paramtyp
Title: "CH ALIS ParamTyp"
Description: "This code system defines the ParamTyp."
* ^content = #complete
* #Duration
* #Length
* #Depth
* #Extension
* #Fracture "Fracture" "Fracture. Datatype: boolean, ParamValue j (yes) or n (no)."
* #RiscClass
* #SGICategory
* #Region
* #Side "Side" "Side. Datatype: code, ParamValue l (left), r (right) or b (both sides)."
* #BMI "BMI" "Body Mass Index. Mapped to ChargeItem.supportingInformation (reference to a BMI Observation) instead of the generic ParameterV40 extension."
* #Indication "Indication" "Indication. Datatype: boolean, ParamValue j (yes) or n (no)."
* #AdditionalText
* #Resource
* #AccountNumber
* #Billable "Billable" "Billable. Datatype: boolean, ParamValue j (yes) or n (no). Mapped to ChargeItem.status (billable | not-billable) instead of the generic ParameterV40 extension."
* #GuarantorID
* #Amount "Amount" "Mapped to ChargeItem.priceOverride.value instead of the generic ParameterV40 extension."
* #InternalAmount
* #Validity
* #Validate
* #ValReason
* #SomaticRehabilitation "SomaticRehabilitation" "Somatic rehabilitation. Datatype: boolean, ParamValue j (yes) or n (no)."
* #Given
* #ServiceText
* #ClientUnit
* #NumberofParticipants
* #Application
* #ATCCode
* #Dose "Dose" "Dosis bei Medikamenten (dose of a medication)."
* #SLIndicationCode "SLIndicationCode" "Indikationscode aus der SL (Spezialitätenliste). Mapped to the CH Core regulated-authorization indication-code extension (ChargeItem.extension:SLIndicationCode) instead of the generic ParameterV40 extension."
* #Code207 "Code207" "Nicht substituierbares Medikament (medication that must not be substituted)."
* #FraFree "FraFree" "Franchise befreite Vorsorgeleistung (preventive service exempt from the deductible)."
* #MidnightCensus "MidnightCensus" "Dauert eine Sitzung über Mitternacht, so muss dieses Attribut auf allen zu dieser Sitzung gehörenden Leistungen gesetzt werden (if a session lasts past midnight, this attribute must be set on all services of that session)."