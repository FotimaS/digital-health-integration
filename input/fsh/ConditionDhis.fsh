Profile: ConditionProfile
Parent: Condition
Id: condition-profile   
Title: "Condition Profile"
Description: "Подробная информация о состояниях, проблемах или диагнозах"
* ^experimental = true
* ^status = #active

* identifier 0..* MS
* identifier ^short = "Внешние идентификаторы для данного состояния."
* clinicalStatus 1..1 MS
* verificationStatus 0..1 MS
* category 0..* MS
* code 0..1 MS 
* code from ConditionCodeVS
* code ^short = "Идентификация состояния, проблемы или диагноза."
* subject 1..1 MS
* subject only Reference(PatientProfile)
* encounter 0..1 MS 
* encounter only Reference(Encounter)
* onset[x] MS
* onset[x] ^short = "Предполагаемая или фактическая дата, дата-время или возраст"
* onsetDateTime 0..1 MS
* onsetAge 0..1 MS
* onsetPeriod 0..1 MS
* recordedDate 0..1 MS
* participant MS 
  * function 0..1 MS
  * function from http://terminology.hl7.org/ValueSet/provenance-agent-type 
  * actor 1..1 MS 
  * actor only Reference(Practitioner)

// Instance Example
Instance: example-tbc-diagnosis
InstanceOf: ConditionProfile
Description: "Bakteriologik tasdiqlangan o'pka sili namunasi"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = https://terminology.dhp.uz/CodeSystem/condition-code-cs#tub001-0001 "Primary respiratory tuberculosis"
* subject = Reference(example-patient-john)
* onsetDateTime = "2025-06-03"
* recordedDate = "2025-08-22"

* participant[0]
  * function = http://terminology.hl7.org/CodeSystem/provenance-participant-type#performer "Performer"
  * actor.reference = "Practitioner/example-practitioner"