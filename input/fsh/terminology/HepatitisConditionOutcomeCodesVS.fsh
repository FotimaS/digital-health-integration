ValueSet: HepatitisConditionOutcomeCodesVS
Id: hep-condition-outcome-codes-vs
Title: "Hepatitis condition outcome codes valueset"
Description: "ValueSet for hepatitis condition outcome codes"

* ^experimental = true

* include $sct#1137679005 "Dori-darmonlar yaxshi ta'sir etdi"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Хороший ответ на лечение"
  * ^designation[1].language = #en
  * ^designation[1].value = "Good response to medication"

* include $sct#405786003 "Dori-darmonlar ta'sir etmadi"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Плохой ответ на лечение"
  * ^designation[1].language = #en
  * ^designation[1].value = "Poor response to treatment"