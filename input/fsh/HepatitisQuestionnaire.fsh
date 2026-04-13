Profile: HepatitisQuestionnaire
Parent: Questionnaire
Id: hepatitis-questionnaire
Title: "Hepatitis questionnaire profile"
Description: "Gepatit bilan bog'liq anamnez va klinik ma'lumotlarni yig'ish uchun strukturaviy so'rovnoma"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS 
* title 1..1 MS
* title ^short = "HEPATITIS QUESTIONNAIRE"

* title.extension contains http://hl7.org/fhir/StructureDefinition/translation named translation 0..* MS // Structure definitionga translation definition qoshish kk
* description 0..1 MS
* description.extension contains http://hl7.org/fhir/StructureDefinition/translation named translation 0..* MS

* subjectType = #Patient
* status from http://hl7.org/fhir/ValueSet/publication-status (required)
* status = #active

* item 0..* MS
  * linkId 1..1 MS
  * text 0..1 MS
  * type from http://hl7.org/fhir/ValueSet/item-type (required)

  * item 0..* MS
    * linkId 1..1 MS
    * text 0..1 MS
    * type from http://hl7.org/fhir/ValueSet/item-type (required)

    * enableWhen 0..* MS
      * question 1..1 MS
      * operator from http://hl7.org/fhir/ValueSet/questionnaire-enable-operator (required)
      * answer[x] 1..1 MS

    * answerOption 0..* MS
      * value[x] only string or Coding
      * valueCoding from http://hl7.org/fhir/ValueSet/prepare-patient-prior-specimen-collection  (example)


// Instance Example
Instance: example-hepatitis-questionnaire
InstanceOf: HepatitisQuestionnaire
Description: "Gepatit B va C bo'yicha o'tkazilgan davolash muolajalari so'rovnomasi"
Usage: #example
* status = #active
* title = "HEPATITIS QUESTIONNAIRE"
* identifier.value = "HCV-HBV-QS-2026"

* item[0]
  * linkId = "grp-1"
  * text = "ОСНОВНАЯ ИНФОРМАЦИЯ"
  * type = #group 

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Проводилось ли лечение от ВГС/ВГВ в прошлом (в анамнезе)?"
    * type = #boolean

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "Какие лекарства принимались против ВГС/ВГВ?"
    * type = #string
    * enableWhen[0]
      * question = "hx-tx-hcv-hbv"
      * operator = #=
      * answerBoolean = true

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Гинекологическое лечение / Беременность"
  * type = #group

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Срок беременности (Homiladorlik muddati)"
    * type = #coding
    * answerOption[0].valueCoding = http://terminology.dhp.uz/CodeSystem/trimester#707723000 "Twenty four hours after peritoneal dialysis"