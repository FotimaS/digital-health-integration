Instance: observation-tuberculosis-code
InstanceOf: ConceptMap
Usage: #definition
Title: "Observation local codes to SNOMED CT"
Description: "Description"
* url = "https://dhp.uz/fhir/integrations/ConceptMap/observation-tuberculosis-code"
* name = "ObservationCodeToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ObservationCodeCS)
* sourceScopeCanonical = Canonical(ObservationCodeVS)
* group.target = $loinc_code

* group[=].element[+].code = #Tub002-0001
* group[=].element[=].display = "Balg'am surtmasi, FL"
* group[=].element[=].target[+].code = #53904-9
* group[=].element[=].target[=].display = "Sputum smear microscopy (fluorescent)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Tub002-0002
* group[=].element[=].display = "Balg'am surtmasi, ZN"
* group[=].element[=].target[+].code = #647-8
* group[=].element[=].target[=].display = "Sputum smear microscopy (Ziehl–Neelsen)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Tub002-0010
* group[=].element[=].display = "Ko'krak qafasi rentgenografiyasi"
* group[=].element[=].target[+].code = #30745-4
* group[=].element[=].target[=].display = "Chest X-ray"
* group[=].element[=].target[=].relationship = #equivalent

* group[+].source = Canonical(ObservationCodeCS)
* group[=].target = $sct
* targetScopeCanonical = $sct-vs

* group[=].element[+].code = #Tub002-0006
* group[=].element[=].display = "MGIT muhitida ekish"
* group[=].element[=].target[+].code = #438487006
* group[=].element[=].target[=].display = "MGIT BACTEC culture"
* group[=].element[=].target[=].relationship = #equivalent