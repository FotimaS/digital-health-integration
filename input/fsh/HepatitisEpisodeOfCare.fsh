Profile: HepatitisEpisodeOfCare
Parent: EpisodeOfCare
Id: hepatitis-episode-of-care
Title: "Hepatitis Episode of Care Profile"
Description: "Profile for representing episodes of care related to hepatitis patients in the context of a digital health integration project. This profile extends the base EpisodeOfCare resource to include specific elements and extensions relevant to hepatitis patient care, such as diagnosis details, clinical status, and care management information."

* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* status MS 
* status from HepatitisEpisodeOfCareStatusVS (required)

* diagnosis MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only CodeableReference(HepatitisCondition)
* diagnosis.condition from HepatitisICDVS (required) // CodeSystem should be done
* diagnosis.condition ^short = "Bemorning gepatit tashxisi"  //Please translate this definition to English and add for all item ^short = "Definition in English from excel file"

* diagnosis.use 0..1 MS
* diagnosis.use from http://hl7.org/fhir/ValueSet/diagnosis-role (required)

* patient 1..1 MS
* patient only Reference(Patient)
* patient ^short = "Hisobda turgan bemor"

* managingOrganization 0..1 MS
* managingOrganization only Reference(Organization)
* managingOrganization ^short = "Hisobni yurituvchi tibbiy muassasa"

* period 0..1 MS
  * start 0..1 MS
  * end 0..1 MS

* careManager 0..1 MS
* careManager only Reference(Practitioner)
* careManager ^short = "Uchyotni nazorat qiluvchi shifokor"

* referralRequest 0..* MS
* referralRequest only Reference(ServiceRequest)
* referralRequest ^short = "Ixtisoslashgan markazga yo'llanmalar"


// Instance Example
Instance: example-hepatitis-episode
InstanceOf: HepatitisEpisodeOfCare
Description: "Bemorning D-uchyotda turishi haqida namuna"
Usage: #example

* identifier 
  * system = "https://gepatit.sanepid.uz/episodeofcare"
  * value = "EOC-2026-1122"

* status = #planned 
* patient = Reference(example-hepatitis-patient)

* diagnosis[0]
  * condition = Reference(example-hepatitis-condition)
  * use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"

* managingOrganization = Reference(Organization/samarkand-infectious-hospital)

* period
  * start = "2026-01-21T12:22:00Z"
  * end = "2026-11-10T06:54:00Z"

* careManager = Reference(Practitioner/example-practitioner)

* referralRequest[0] = Reference(ServiceRequest/referral-to-specialist)
