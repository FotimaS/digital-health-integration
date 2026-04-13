Profile: HepatitisObservationUltraSound
Parent: Observation
Id: hepatitis-observation-ultra-sound
Title: "Hepatitis UltraSound Observation"
Description: "UZI natijalarini, xususan jigar sirrozi va o'smalarni qayd etish uchun profil"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* status from ObservationStatusVS (required)
* status MS

* code 1..1 MS
* code from HepatitisTypeOfUltrasoundVS (required)
* code.coding 0..* MS
  * system 0..1 MS
  * system = $sct
  * code 0..1 MS
  * display 0..1 MS 
* code.text 0..1 MS

* subject 0..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* encounter only Reference(Encounter)

* effective[x] only dateTime or Period
* effective[x] MS
* performer 0..* MS
* performer only Reference(Organization or PractitionerRole)

* value[x] only boolean
* value[x] MS
* valueBoolean ^short = "Natija mavjudligi (ha/yo'q)"

* note 0..* MS


// Instance Example
Instance: example-ultrasound-cirrhosis
InstanceOf: HepatitisObservationUltraSound
Description: "Jigar sirrozi belgilari aniqlangan holat uchun namuna"
Usage: #example
* status = #final
* identifier
  * system = "https://gepatit.sanepid.uz/observation/ultrasound"
  * value = "UZI-2026-777"

* code 
  * coding = $sct#19943007 "Cirrhosis of liver"
  * text = "Signs of cirrhosis"

* subject = Reference(example-hepatitis-patient)
* effectiveDateTime = "2026-01-26"
* performer = Reference(PractitionerRole/muratova-gulshoda-role)

* valueBoolean = true
* note.text = "Jigar chetlari notekis, exogenligi oshgan"


// Instance Example
Instance: example-ultrasound-lesion
InstanceOf: HepatitisObservationUltraSound
Description: "Jigarda o'sma aniqlangan holat uchun namuna"
Usage: #example
* status = #final

* identifier[0]
  * system = "https://gepatit.sanepid.uz/observation/ultrasound"
  * value = "UZI-2026-888"
  
* code 
  * coding = $sct#716203000 "Decompensated cirrhosis of liver (disorder)"
  * text = "Signs of masses in the liver"

* subject = Reference(example-hepatitis-patient)
* effectiveDateTime = "2027-01-26"
* valueBoolean = true