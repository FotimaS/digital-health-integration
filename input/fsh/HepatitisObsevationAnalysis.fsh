Profile: HepatitisObservationAnalysis
Parent: Observation
Id: hepatitis-observation-analysis
Title: "Hepatitis observation analysis profile"
Description: "Gepatit tahlillari natijalarini qayd etish uchun profil"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* method 0..1 MS
* method from $observation-methods (extensible)  //LabObservationMethodsVS 
* category 0..* MS
* category from HepatObsCategoryVS (required) 
* status from ObservationStatusVS (required)
* status 1..1 MS


* code 1..1 MS
* code from HepatitisObservationAnalysisVS (required) //change the URL after ObservationLabCodes branch merged to main branch 

* subject 0..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* encounter only Reference(Encounter)
* effective[x] only dateTime or Period
* effective[x] 0..1 MS

* value[x] 0..1 MS //hardoim ^short da excelda yozilgan definitionni ingliz tiliga tarjima qilib qo'shib qo'ying
* value[x] only Attachment or string or CodeableConcept 
* valueCodeableConcept MS
* valueCodeableConcept from HepatitisLabResultTypeVS (required)

* performer 0..* MS
* performer only Reference(Organization or PractitionerRole)
/*
* component 0..* MS //Compenenta faqat Zuhra tayyorlavotgan LabObservationPanelVS keladi
  * code 1..1 MS
  * code from HepatitisObservationAnalysisVS (required)

  * valueQuantity
    * value 0..1 MS
    * comparator from QuantityComparatorVS (required)
    * unit 0..1 MS
    * system 0..1 MS
    * system = $ucum
    * code 0..1 MS
*/
* dataAbsentReason from DataAbsentReasonVS (extensible)
* interpretation from ObservationInterpretationVS (extensible)
* note 0..* MS


// Instance Example
Instance: example-hepatitis-observation-analysis
InstanceOf: HepatitisObservationAnalysis
Description: "DNK Gepatit B tahlili namunasi"
Usage: #example
* language = #en
* status = #final
//* identifier 
//  * system = "https://gepatit.sanepid.uz/observation"
//  * value = "PZR-2026-001"

* method = $sct#258066000 "Polymerase chain reaction"
* code = $loinc#22314-9 "Hepatitis A virus IgM Ab [Presence] in Serum"
* subject = Reference(Patient/example-hepatitis-patient)
* effectiveDateTime = "2026-01-27T09:57:00Z"
* valueCodeableConcept = hep-lab-res-type-cs#lab_0001_00001 "Negative"
* performer = Reference(Organization/samarkand-regional-hospital)
* component[0]
  * code = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum"
  * valueQuantity 
    * value = 100
    * comparator = #< 
    * unit = "mL"
    * system = "http://unitsofmeasure.org"
    * code = #mL