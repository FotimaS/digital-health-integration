CodeSystem: QuantityComparatorCS
Id: quantity-comparator-cs
Title: "Quantity comparator CodeSystem"
Description: "CodeSystem for quantity comparator in Uzbek, Russian and English languages"

* insert OriginalCodeSystemDraft(quantity-comparator-cs)

* #< "Less than"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Меньше чем"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan kichik"

* #<= "Less than or equal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Меньше или равно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan kichik yoki teng"

* #>= "Greater than or equal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больше или равно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan katta yoki teng"  

* #> "Greater than"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больше чем"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan katta" 

* #ad "Sufficient to achieve this total quantity"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Достаточно для достижения этого общего количества"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu jami miqdorni yaxshi qilish uchun yetarli"