Instance: muratova-goolshod
InstanceOf: Practitioner
Usage: #example

* id = "muratova-goolshod"
* name.family = "Muratova"
* name.given[0] = "Gulshod"

Instance: samarkand-regional-hospital
InstanceOf: Organization
Usage: #example

* id = "samarkand-regional-hospital"
* name = "Samarkand Regional Hospital"

Instance: samarkand-infectious-hospital
InstanceOf: Organization
Usage: #example

* id = "samarkand-infectious-hospital"
* name = "Samarkand Infectious Hospital"

Instance: simonov-farkhod
InstanceOf: Practitioner
Usage: #example

* id = "simonov-farkhod"
* name.family = "Simonov"
* name.given[0] = "Farkhod"

Instance: example-practitioner
InstanceOf: Practitioner
Usage: #example

* id = "example-practitioner"
* name.family = "Simonov"
* name.given[0] = "Farkhod"

Instance: referral-to-specialist
InstanceOf: ServiceRequest
Usage: #example

* id = "referral-to-specialist"
* status = #active
* intent = #order
* subject = Reference(Patient/example-hepatitis-patient)

Instance: muratova-gulshoda
InstanceOf: Practitioner
Usage: #example

* id = "muratova-gulshoda"
* name.family = "Muratova"
* name.given[0] = "Gulshoda"

Instance: muratova-gulshoda-role
InstanceOf: PractitionerRole
Usage: #example

* id = "muratova-gulshoda-role"
* practitioner = Reference(Practitioner/muratova-gulshoda)
* organization = Reference(Organization/samarkand-regional-hospital)

// Instance: example-hepatitis-patient
// InstanceOf: HepatitisPatientProfile
// Description: "Gepatit profili uchun Tolibjon To'lanboev misolida namuna"
// Usage: #example

// // * extension[nationality].extension[code].valueCodeableConcept = #UZ "Uzbekistan"
// * extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"

// * identifier[nationalId]
//   * system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
//   * value = "515050500505"
//   * use = #usual

// * identifier[passportLocal]
//   * system = "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local"
//   * value = "AB1234567"
//   * use = #usual

// * name 
//   * use = #official
//   * text = "To'lanboev Tolibjon"
//   * family = "To'lanboyev"
//   * given = "Tolibjon"

// * gender = #male 
// * birthDate = "1990-02-01"

// * address[uzAddress]
//   * use = #temp
//   * type = #physical
//   * text = "Iltifot MFY, 58-Harbiy shaharcha mavzesi, 53 Uy, 104 Kvartira"
//   * city = #17150085
//   * district = #1726262
//   * state = #1726
//   * country = "UZ"