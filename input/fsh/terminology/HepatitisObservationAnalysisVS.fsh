ValueSet: HepatitisObservationAnalysisVS
Id: hep-observation-analysis-vs
Title: "Hepatitis observation analysis valueset"
Description: "ValueSet for hepatitis observation analysis"

* ^experimental = true
* ^extension.url = $valueset-supplement
* ^extension.valueCanonical = Canonical(HepatitisObservationAnalysisCS)

* include codes from system $loinc
// * include codes from valueset LabObservationPanelVS //observation laboratory paneli integration uchun tayyor bo'ganida qoyib ketishimiz kerak
