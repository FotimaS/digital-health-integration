// Profile: HepatitisConsentProfile
// Parent: Consent
// Id: hepatitis-consent-profile
// Title: "Hepatitis Consent Profile"
// Description: "Bemorning tibbiy xizmatlar va ma'lumotlarni qayta ishlashga roziligini qayd etish uchun profil"
// * ^experimental = true
// * ^status = #active
// * ^publisher = "Uzinfocom"

// * identifier 1..* MS SU
// * identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
// * identifier.type from http://hl7.org/fhir/ValueSet/identifier-type (required)
// * identifier.system = "https://gepatit.sanepid.uz"
// * identifier.value 0..1 MS

// * status 1..1 MS
// * status from http://hl7.org/fhir/ValueSet/consent-state-codes (required)

// * category 0..* MS
// * category from from http://hl7.org/fhir/ValueSet/consent-category (example)
// * category = $loinc#59284-0 "Patient Consent"

// * subject 1..1 MS
// * subject only Reference(Patient)
// * subject ^short = "Rozilik berilgan sana va vaqt"

// * dateTime 0..1 MS
// * dateTime ^short = "Rozilik berilgan sana va vaqt"

// * controller 0..* MS
// * controller only Reference(Organization)
// * controller ^short = "Rozilikni boshqaruvchi tashkilot"

// * sourceReference 0..* MS
// * sourceReference only Reference(DocumentReference or Consent)
// * sourceReference ^short = "Rozilik hujjati manbasi"

// * provision MS
// * provision.type = #permit
// * provision ^short = "Rozilik shartlari (Ruxsat berish)"


// // Instance Example
// Instance: example-hepatitis-consent
// InstanceOf: HepatitisConsentProfile
// Description: "Bemorning ma'lumotlarni qayta ishlashga roziligi namunasi"
// Usage: #example

// * identifier
//   * use = #official
//   * system = "https://gepatit.sanepid.uz"
//   * value = "2a5f0f13-8e86-4e86-8744-f19a0d9a809d"

// * status = #active
// * category = $loinc#59284-0 "Patient Consent"
// * subject = Reference(Patient/example-hepatitis-patient)
// * dateTime = "2026-03-1-T10:00:00Z"

// * provision 
//   * type = #permit
//   * period
//     * start = "2026-03-19"