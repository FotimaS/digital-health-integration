Profile: HepatitisObservationAnalysis
Parent: Observation
Id: hepatitis-observation-analysis
Title: "Hepatitis observation analysis profile"
Description: "Profile for representing hepatitis observation analysis in the context of a digital health integration project. This profile extends the base Observation resource to include specific elements and extensions relevant to hepatitis observation analysis, such as laboratory result types, clinical significance, and associated notes."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Identifier"
* method 0..1 MS
* method from $observation-methods (extensible)  //LabObservationMethodsVS add this value set after LabObsForIntegrationSys branch merged to main branch
* category 0..* MS
* category from HepatObsCategoryVS (required) 
* status from ObservationStatusVS (required)
* status 1..1 MS


* code 1..1 MS
* code from HepatitisObservationAnalysisVS (required) //change the URL after LabObsForIntegrationSys branch merged to main branch 

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
* component 0..* MS 
  * code 1..1 MS
  * code from HepatitisObservationAnalysisVS (required) //after LabObsForIntegrationSys branch merged to main branch change this value set with LaboratoryObservationPanelCS

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
  * code = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum" //I think this example is incorrect , inside of component.code only use panel's analytes code
  * valueQuantity 
    * value = 100
    * comparator = #< 
    * unit = "mL"
    * system = "http://unitsofmeasure.org"
    * code = #mL
