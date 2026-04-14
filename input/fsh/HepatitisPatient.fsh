Profile: HepatitisPatientProfile
Parent: UZCorePatient
Id: hepatitis-patient-profile
Title: "Hepatitis Patient Profile"
Description: "Profile for hepatitis patient resource"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"


* extension[nationality].extension[code].value[x] from NationalityVS (required)
* extension[citizenship].extension[code].value[x] from CitizenshipVS (required)

* identifier 1..* MS SU
  // * extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1 MS
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways patient can be identitifed"
* identifier ^slicing.ordered = false

* identifier[nationalId]
  * use = #official
  * type ^short = "Description of identifier"
  * type.coding 1..* MS
  * type.coding ^short = "Code defined by a terminology system"
    * system 1..1 MS
    * system ^short = "Identity of the terminology system"
    * system = $identifier-type 
    * code 1..1 MS
    * code ^short = "Symbol in syntax defined by the system"
    * code = #NI
    * display 1..1 MS
    * display ^short = "Representation defined by the system"
    * display = "National unique individual identifier"
  * system 1..1 MS
  * system ^short = "The namespace for the identifier value"
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
  * value 1..1 MS
  * value ^short = "The value that is unique"

* identifier[passportLocal]
  * type.coding 1..* MS
  * type.coding ^short = "Code defined by a terminology system"
    * system 1..1 MS
    * system ^short = "Identity of the terminology system"
    * system = $identifier-type 
    * code 1..1 MS
    * code ^short = "Symbol in syntax defined by the system"
    * code = #PPN
    * display 1..1 MS
    * display = "Passport number"
  * system 1..1 MS 
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local"
  * value 1..1 MS

* identifier[healthCardId]
  * use = #official
  * type.coding 1..* MS
    * system 1..1 MS
    * system =  $identifier-type 
    * code 1..1 MS
    * code = #HC
    * display 1..1 MS
    * display = "Health card number"
  * system 1..1 MS
  * value 1..1 MS

* active 0..1 MS
* active ^isModifier = true

* name 0..* MS
  * text 0..1 MS
  * family 0..1 MS
  * given 0..* MS
  * suffix 0..* MS
  * period only Period
  * period 0..1 MS

* telecom 0..* MS

* gender 0..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)

* birthDate 0..1 MS
* deceased[x] only boolean or dateTime
* deceased[x] MS

* address 0..* MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "country"
* address ^slicing.rules = #open

* address[uzAddress].country = "UZ"

* address[uzAddress]
  * use from AddressUseVS (required)
  * type from AddressTypeVS (required)
  * text 0..1 MS
  * line 0..* MS
  * city from MahallaVS (required)
  * district from RegionsVS (required)
  * state from StateVS (required)
  * country 1..1 MS
  * postalCode 0..1 MS
  * period 0..1 MS
  * period only Period

// Instance Example
Instance: example-hepatitis-patient
InstanceOf: HepatitisPatientProfile
Description: "Gepatit profili uchun Tolibjon To'lanboev misolida namuna"
Usage: #example

// * extension[nationality].extension[code].valueCodeableConcept = #UZ "Uzbekistan"
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"

* identifier[nationalId]
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
  * value = "515050500505"
  * use = #official

* identifier[passportLocal]
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local"
  * value = "AB1234567"
  * use = #official

* name 
  * use = #official
  * text = "To'lanboev Tolibjon"
  * family = "To'lanboyev"
  * given = "Tolibjon"

* gender = #male 
* birthDate = "1990-02-01"

* address[uzAddress]
  * use = #temp
  * type = #physical
  * text = "Iltifot MFY, 58-Harbiy shaharcha mavzesi, 53 Uy, 104 Kvartira"
  * city = #17150085
  * district = #1726262
  * state = #1726
  * country = "UZ"