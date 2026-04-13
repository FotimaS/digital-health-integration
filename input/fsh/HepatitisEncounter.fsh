Profile: HepatitisEncounter
Parent: Encounter
Id: hepatitis-encounter
Title: "Hepatitis patient encounter profile"
Description: "Bemorning tibbiy ko'rigi va tahlil jarayonlarini bog'lovchi qabul"

* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS //naming qilishim kk
* status from EncounterStatusVS (required)
* status MS
* status = #completed 

* subject 1..1 MS
* subject only Reference(Patient)
* subject ^short = "Qabul qilinayotgan bemor"

* serviceProvider 0..1 MS
* serviceProvider only Reference(Organization)
* serviceProvider ^short = "Tibbiy muassasa"

* participant 0..* MS
  * type 0..* MS
  * type from HepatitisEncounterParticipantTypeVS (extensible)
  * actor 0..1 MS
  * actor only Reference(Practitioner or PractitionerRole or RelatedPerson)
  * actor ^short = "Qabulni amalga oshirgan shifokor"

* actualPeriod 0..1 MS
* actualPeriod ^short = "Qabulning haqiqiy vaqti"

* plannedStartDate 0..1 MS
* plannedStartDate ^short = "Rejalashtirilgan qabul vaqti"

* partOf 0..1 MS
* partOf only Reference(Encounter)
* partOf ^short = "Ushbu qabul jarayonining bir qismi ekanligi"


// Instance Example
Instance: example-hepatitis-encounter
InstanceOf: HepatitisEncounter
Description: "Yusupova Xalida uchun 2026-yil 26-yanvardagi qabul namunasi"
Usage: #example
* identifier 
  * system = "https://gepatit.sanepid.uz/encounter"
  * value = "ENC-2026-9901"

* status = #completed

* subject = Reference(example-hepatitis-patient)
* serviceProvider = Reference(Organization/samarkand-regional-hospital)

* participant[0].actor = Reference(Practitioner/muratova-goolshod)
* actualPeriod 
  * start = "2026-01-26T09:41:00Z"
* plannedStartDate = "2026-01-26T09:41:00Z"