Profile: HepatitisCondition
Parent: Condition
Id: hepatitis-condition
Title: "Hepatitis condition profile"
Description: "Profile for representing hepatitis conditions in the context of a digital health integration project. This profile extends the base Condition resource to include specific elements and extensions relevant to hepatitis diagnosis, clinical status, and treatment outcomes."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS SU
* clinicalStatus 1..1 MS
* clinicalStatus from HepatitisClinicalStatusVS (required)

* extension contains http://hl7.org/fhir/StructureDefinition/condition-outcome named diagnosisType 0..1 MS
* extension[diagnosisType].valueCodeableConcept from HepatitisConditionDiagnosisTypeVS (required)

* code 0..1 MS
* code from HepatitisICDVS (required) //CodeSystem should be done

* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* encounter only Reference(Encounter)

* extension contains drug-efficacy named drugEfficacy 0..* MS
* extension[drugEfficacy].valueBoolean MS

* recordedDate 0..1 MS
* participant 0..1 MS
  * actor only Reference(Practitioner)
  * actor ^short = "Tashxisni qo'ygan shifokor" //please translate this definition to English and add for all item ^short = "Definition in English from excel file"

* note 0..* MS


// Instance Example
Instance: example-hepatitis-condition
InstanceOf: HepatitisCondition
Description: "Bemorga qo'yilgan asosiy tashxis anmunasi" //Please translate this description to English
Usage: #example
* identifier 
  * system = "https://gepatit.sanepid.uz/condition"
  * value = "COND-2026-5541"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"

* code = http://hl7.org/fhir/sid/icd-10#B17.1 "Acute hepatitis C"

* subject = Reference(example-hepatitis-patient)
* encounter = Reference(example-hepatitis-encounter)

* recordedDate = "2026-11-09T13:31:00Z"
* participant.actor = Reference(Practitioner/simonov-farkhod)

* extension[drugEfficacy].valueBoolean = false
* note.text = "Bemorda simptomlar 2 hafta oldin boshlangan"
