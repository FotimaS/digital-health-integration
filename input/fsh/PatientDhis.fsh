Profile: PatientProfile
Parent: Patient
Id: patient-profile
Title: "Patient Profile"
Description: "Profile for patient resource"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS SU
  * extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.type from http://hl7.org/fhir/ValueSet/identifier-type (required)

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways patient can be identitifed"
* identifier ^slicing.ordered = false

* identifier contains nationalId 1..1 MS
* identifier[nationalId]
  * type.coding 1..* MS
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code 1..1 MS
    * code = #NI
    * display 1..1 MS
    * display = "National unique individual identifier"
  * system 1..1 MS
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
  * value 1..1 MS

* active 0..1 MS
* active ^isModifier = true

* name 0..* MS
  * use 0..1 MS
  * use from NameUseVS (required)
  * text 0..1 MS
  * family 0..1 MS
  * given 0..* MS
  * suffix 0..* MS
  * period 0..1 MS

* gender 0..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)

* birthDate 0..1 MS
* deceased[x] only boolean or dateTime
* deceased[x] MS

* address 0..* MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "country"
* address ^slicing.rules = #open

* address contains uzAddress 0..* MS
* address[uzAddress]
  * use = #temp
  * use ^isModifier = true
  * type = #physical
  * text 0..1 MS
  * line 0..* MS
  * city 0..1 MS
  * city from MahallaVS (required)
  * district 0..1 MS
  * district from RegionsVS (required)
  * state 0..1 MS
  * state from StateVS (required)
  * country 1..1 MS
  * country = "182"
  * period 0..1 MS

* managingOrganization 0..1 MS
* managingOrganization only Reference(Organization)


// Instance example
Instance: example-patient-john
InstanceOf: PatientProfile
Description: "John Deera uchun namuna"
Usage: #example

* identifier[nationalId]
  * value = "12345678901234"

* active = false

* name
  * use = #official
  * text = "John Smith"
  * family = "Deera"
  * given = "John"

* gender = #other

* birthDate = "2026-03-13"

* address[uzAddress]
  * use = #temp
  * type = #physical
  * text = "Iltifot MFY, 58-Harbiy shaharcha mavzesi, 53 Uy, 104 Kvartira"
  * city = "104-0116"
  * district = "1726290"
  * state = "1726"
  * country = "182"