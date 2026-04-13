ValueSet: HepatitisTrimesterVS
Id: hepatitis-trimester-vs
Title: "Hepatitis trimester ValueSet"
Description: "ValueSet for hepatitis trimester"

* ^experimental = true

* include $sct#307159006 "Pregnancy time period" 
  * ^designation[0].language = #ru
  * ^designation[0].value = "Срок беременности"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Homiladorlik davri"