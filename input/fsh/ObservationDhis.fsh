Profile: ObservationProfile
Parent: Observation
Id: observation-profile
Title: "Observation Profile"
Description: "Measurement and simple assertions"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Идентификатор для наблюдения"

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status

* category 0..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* category = $observation-category#laboratory

* code 1..1 MS
* code from ObservationCodeVS (required)
* code ^short = "Classification of type of observation"

* subject 1..1 MS
* subject only Reference(PatientProfile)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS SU

* issued 0..1 MS

* performer 0..* MS
* performer only Reference(Organization)

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Результат тестов"

* method 0..1 MS
* method from $observation-methods 

* specimen 0..1 MS
* specimen only Reference(Specimen)
* specimen ^short = "Specimen used for this observation + Rule: If Observation.specimen is a reference to Group, the group can only have specimens"

* component 0..* MS
  * code 1..1 MS
  * code from ObservationComponentCodeVS (required)
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1 MS
  * valueCodeableConcept from ObservationCodeableConceptVS

* hasMember 0..* MS
* note 0..* MS

// Instance Example
Instance: example-tb-microscopy
InstanceOf: ObservationProfile
Description: "Mikroskopiya tahlili va uning gradatsiyasi namunasi"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = https://terminology.dhp.uz/CodeSystem/observation-code-cs#Tub002-0001 "Sputum smear microscopy (fluorescent)"
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-12T10:00:00Z"
* issued = "2026-03-12T11:00:00Z"
* performer.reference = "Organization/example-organization"
* valueCodeableConcept =  $observation-interpretation#POS "Positive"

* component[0] 
  * code = https://terminology.dhp.uz/CodeSystem/observation-component-code-cs#Tub004-0009 "Ethambutol (5.0 mg/mL)"
  * valueCodeableConcept = https://terminology.dhp.uz/CodeSystem/observation-codeable-concept-cs#Tub003-0011 "1–9 AFB / 40 fields"

// Instance: Example
Instance: example-tb-xpert
InstanceOf: ObservationProfile
Description: "Xpert MTB/RIF tahlili (Rifampitsinga chidamlilik bilan)"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = https://terminology.dhp.uz/CodeSystem/observation-code-cs#Tub002-0002 "Sputum smear microscopy (Ziehl–Neelsen)"
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-12T12:00:00Z"

* component[0]
  * code = https://terminology.dhp.uz/CodeSystem/observation-component-code-cs#Tub004-0017 "Linezolid (1.0 mg/mL)"
  * valueCodeableConcept =  $observation-interpretation#R "Resistant"
