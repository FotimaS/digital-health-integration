Profile: HepatitisQuestionnaireResponse
Parent: QuestionnaireResponse
Id: hepatitis-questionnaire-response
Title: "Hepatitis questionnaire Response"
Description: "Profile for representing responses to a hepatitis-related questionnaire in the context of a digital health integration project. This profile extends the base QuestionnaireResponse resource to include specific elements and extensions relevant to hepatitis patient assessments, such as treatment history, clinical status, and pregnancy-related information."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS SU
* status from http://hl7.org/fhir/ValueSet/questionnaire-answers-status (required)
* status MS

* questionnaire 1..1 MS
* questionnaire only Canonical(HepatitisQuestionnaire)

* subject 0..1 MS
* subject only Reference(HepatitisPatientProfile)
* subject ^short = "Javob bergan bemor"

* encounter 0..1 MS
* encounter only Reference(HepatitisEncounter)

* authored 0..1 MS
* authored ^short = "To'ldirilgan sana va vaqt"

* item 0..1 MS
  * linkId 1..1 MS
  * text 1..1 MS
  * answer 0..* MS
    * value[x] only boolean or string or Coding
    * valueCoding from HepatitisTrimesterVS (example) //CodeSystem should be done

    * item 0..* MS
      * linkId 1..1 MS
      * text 0..1 MS
      * answer 0..* MS
        * value[x] only boolean or string


// Instance Example 
Instance: example-hcv-response
InstanceOf: QuestionnaireResponse
Description: "Bemor tomonidan to'ldirilgan anamnez javoblari namunasi"
Usage: #example

* identifier 
  * system = "urn:ietf:rfc:3986"

* status = #completed
* questionnaire = "https://dhp.uz/fhir/Questionnaire/hepatitis-questionnaire"
* subject = Reference(example-hepatitis-patient)
* authored = "2026-03-19T12:00:00Z"
* author = Reference(muratova-gulshoda-role)

* item[0]
  * linkId = "hx-tx-hcv-hbv"
  * text = "Лечение от ВГС/ВГВ (в анамнезе)"
  * answer[0]
    * valueBoolean = true
    
    * item[0]
      * linkId = "hx-tx-hvc-hbv-meds"
      * text = "Какие лекарства принимались против ВГС/ВГВ?"
      * answer[0]
        * valueString = "Sofosbuvir + Declatasvir"

* item[1]
  * linkId = "pregnancy-trimester"
  * text = "Срок беременности"
  * answer[0]
    * valueCoding = http://snomed.info/sct#255246003 "First trimester"