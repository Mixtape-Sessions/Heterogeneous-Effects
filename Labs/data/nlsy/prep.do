label drop _all
infile using mixtape.dct,clear
do mixtape-value-labels.do

* keep males only
gen byte female = SEX_1997==2
keep if !female

* get non-missing income
foreach y in 2015 2017 2019 {
	replace YINC_1700_`y' = . if YINC_1700_`y'<0
}

egen annualearnings = rowmean(YINC_1700*)

* want people with a bachelor's degree
keep if CVC_HIGHEST_DEGREE_EVER>=3

* get binary private college indicator (ever attended private not-for-profit, just for simplicity)
gen byte privatecollege=0
foreach var of varlist CV_COLLEGE_TYPE* {
	replace privatecollege = 1 if `var'==2
}
tab privatecollege

* now clean up parent's education variables
gen byte dadcollege = CV_HGC_BIO_DAD_1997>12
gen byte momcollege = CV_HGC_BIO_MOM_1997>12

gen byte missingasvab = ASVAB<0
keep if !missingasvab


gen lnearnings = ln(annualearnings)

foreach y in annualearnings lnearnings {
	reg `y' privatecollege,robust
	reg `y' privatecollege dadcollege momcollege ASVAB,robust
	
}
rename ASVAB asvab

keep annualearnings privatecollege asvab dadcollege momcollege 

export delimited nlsy97.csv,replace