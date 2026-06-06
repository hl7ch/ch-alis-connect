CodeSystem: ChAlisParamTyp
Id: ch-alis-connect-paramtyp
Title: "CH ALIS ParamTyp"
Description: "This code system defines the ParamTyp."
* ^content = #complete
* #Duration
* #Length
* #Depth
* #Extension
* #Fracture "Fracture (j/n)"
* #RiscClass
* #SGICategory
* #Region
* #Side "Side (l,r,b)"
* #BMI "BMI" "Body Mass Index. Mapped to ChargeItem.supportingInformation (reference to a BMI Observation) instead of the generic ParameterV40 extension."
* #Indication "Indication (j/n)"
* #AdditionalText
* #Resource
* #AccountNumber
* #Billable "Billable (j/n)" "Mapped to ChargeItem.status (billable | not-billable) instead of the generic ParameterV40 extension."
* #GuarantorID
* #Amount "Amount" "Mapped to ChargeItem.priceOverride.value instead of the generic ParameterV40 extension."
* #InternalAmount
* #Validity
* #Validate
* #ValReason
* #SomaticRehabilitation "SomaticRehabilitation (j/n)"
* #Given
* #ServiceText
* #ClientUnit
* #NumberofParticipants
* #Application
* #ATCCode
* #Dose "Dosis bei Medikamenten"
* #SLIndicationCode "Indikationscode aus der SL (Spezialitätenliste)" "Mapped to the CH Core regulated-authorization indication-code extension (ChargeItem.extension:SLIndicationCode) instead of the generic ParameterV40 extension."
* #Code207 "nicht substituierbares Medikament"
* #FraFree "Franchise befreite Vorsorgeleistung"
* #MidnightCensus "Dauert eine Sitzung über Mitternacht, so muss dieses Attribut auf allen zu dieser Sitzung gehörenden Leistungen gesetzt werden."