ValueSet: HepatitisICDVS
Id: hep-icd-vs
Title: "Hepatitis ICD-10 codes valueset"
Description: "Gepatit kasalligi uchun ICD-10 kodlari tanlov qiymatlari"

* ^experimental = true

* include $icd-10#B15 "Acute hepatitis A"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит A"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit A"

* include $icd-10#B15.0 "Fulminant hepatitis A with hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит A с гепатальной комой"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit A gepatal komaga ega"

* include $icd-10#B15.9 "Acute hepatitis A without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит A без гепатальной комы"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit A gepatal komasiz"

* include $icd-10#B16 "Fulminant viral hepatitis B"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит B"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit B"  

* include $icd-10#B16.0 "Fulminant viral hepatitis B with delta agent (coinfection) and hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит B с дельта-агентом (коинфекция) и гепатальной комой"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit B delta agenti bilan (coinfeksiya) va gepatal komaga bilan"

* include $icd-10#B16.1 "Fulminant viral hepatitis B with delta agent (coinfection) without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит B с дельта-агентом (коинфекция) без гепатальной комы"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit B delta agenti bilan (coinfeksiya) va gepatal komasiz"

* include $icd-10#B16.2 "Fulminant viral hepatitis B without delta agent, with hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит B без дельта-agenta c гепатальной комы"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit B delta agentisiz va gepatal koma bilan"

* include $icd-10#B16.9 "Fulminant viral hepatitis B without delta agent, without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит B без дельта-agenta и без гепатальной комы"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit B delta agentisiz va gepatal komasiz"   

* include $icd-10#B17 "Other fulminant viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Другие острые вирусные гепатиты"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Boshqa o'tkir virusli gepatitlar"

* include $icd-10#B17.0 "Fulminant delta (hepatitis D) infection (superinfection in a chronic hepatitis B carrier)"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый дельта-(гепатит D) инфекция (суперинфекция хронического носителя гепатита B)"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq gelta-(gepatit D) (B gepatiti surunkali tashuvchisining superinfektsiyasi)"

* include $icd-10#B17.1 "Fulminant viral hepatitis C"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит C"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit C"

* include $icd-10#B17.2 "Fulminant viral hepatitis E"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Острый гепатит E"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Oq virusli gepatit E"  

* include $icd-10#B17.8 "Other specified fulminant viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Другие уточненные острые вирусные гепатиты"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Boshqa aniqlangan o'tkir virusli gepatit"

* include $icd-10#B18 "Chronic viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Хронические вирусные гепатиты"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Surunkali virusli gepatitlar"

* include $icd-10#B18.0 "Chronic viral hepatitis B with delta agent"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Хронический вирусный гепатит B с дельта-агентом"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Surunkali virusli gepatit B delta-agent bilan"

* include $icd-10#B18.1 "Chronic viral hepatitis B without delta agent"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Хронический вирусный гепатит B без дельта-агента"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Surunkali virusli gepatit B delta-agentisiz"

* include $icd-10#B18.2 "Chronic viral hepatitis C"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Хронический вирусный гепатит C"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Surunkali virusli gepatit C"   

* include $icd-10#B18.8 "Other chronic viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Другие хронические вирусные гепатиты"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Boshqa surunkali virusli gepatitlar"   

* include $icd-10#B18.9 "Unspecified chronic viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Хронический вирусный гепатит неуточненный"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Aniqlanmayan surunkali virusli gepatit"

* include $icd-10#B19 "Unspecified viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Неуточненный вирусный гепатит"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Aniqlanmagan virusli gepatit"

* include $icd-10#B19.0 "Unspecified viral hepatitis with hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Неуточненный вирусный гепатит с гепатальной комой"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Aniqlanmagan virusli gepatit gepatal koma bilan"

* include $icd-10#B19.9 "Unspecified viral hepatitis without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Неуточненный вирусный гепатит без гепатальной комы"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Aniqlanmagan virusli gepatit gepatatal komasiz"

* include $icd-10#K74.0 "Cirossis of liver"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Цирроз печени"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Jigar sirrozi"

* include $icd-10#K74.6 "Other and unspecified cirrhosis of liver"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Другой и неуточненный цирроз печени"
  * ^designation[1].language = #uz
  * ^designation[1].value = "Boshqa va aniqlanmagan jigar sirrozi"