capture log close
local output jtpahet
log using `output'.log,replace text

/************************************
PROGRAM: jtpahet.do
DESCRIPTION: implement Athey and Wager's Random Causal Forest
to explore heterogeneous effects in the National JTPA Study.
DATE: May 15, 2023
*********************************************/

* load the JTPA data:
import delimited "../data/jtpahet.csv", clear

* clear the R environment
rcall clear

* if necessary, install the generalized random forest (grf) package:
* rcall: install.packages("grf")
rcall: library(grf)

* define R dataframe from the dataset load in Stata: 
rcall: jtpahet <- st.data()

* define the set of covariates (features) for prediction:
rcall: X = jtpahet[,c("age","priorearn","educ","female","nonwhite","married")]

* train the random causal forest:
rcall: tau.forest <- causal_forest(X,jtpahet[,"foundjob"],jtpahet[,"z"])

* obtain out-of-bag predictions for training sample observations
rcall: tau.hat.oob <- predict(tau.forest)

* save the data currently in memory becase st.load() below will replace it
tempfile original
save `original'

* bring the predictions over to Stata
rcall: st.load(tau.hat.oob)

* merge back with the original data:
merge 1:1 _n using `original'

* show histogram of predicted treatment effects:
twoway histogram predictions,xline(.02)

log close
