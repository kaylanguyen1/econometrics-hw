 //homework 1 question 7

//load cps5.dta dataset
use cps5, clear

//see variables, data types, variable labels
describe

// (a) see summary statistics - variables, # observations, mean, stdev, min/max
summarize

// (a) see histograms for variables, observations sorted into ints/non-ints, negative, zero, positive, and # of unique values
inspect

// (b) linear regression of wage v educ
regress wage educ
predict wage_hat //fitted values

// (c) least squares residuals and plot against educ
predict ehat, resid //least squares residuals for linear regression
scatter ehat educ

// (d) estimate regressions for males, females, blacks, and whites
regress wage educ if female==0 //regression for males only
regress wage educ if female==1 //females only
regress wage educ if black==1 //blacks only
regress wage educ if white==1 //whites only

// (e) quadratic regression and marginal effect of another year of educ for someone with 12 years and 16 years education for both linear and quad regression
generate educ2 = educ*educ
regress wage educ2 
predict wage_hat_qmodel

// marginal effect
regress wage c.educ#c.educ
margins, dydx(educ) at(educ=12)

// (f) plot fitted linear and quadratic model on same graph with wage and educ
twoway (scatter wage educ, msymbol(Oh)) (connected wage_hat educ, lcolor(blue)) (connected wage_hat_qmodel educ, lcolor(red))