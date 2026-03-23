// homework 1 question 6
use collegetown, clear

describe
summarize
inspect

//(a) scatter plot of house price against house size
twoway (scatter price sqft, msymbol(Oh))

//(b) linear regression 
regress price sqft
predict price_hat 
predict ehat, resid

sort sqft
twoway (scatter price sqft, msymbol(Oh)) (connected price_hat sqft)

//(c) quadratic regression
generate sqft2 = sqft*sqft
regress price sqft2 
predict price_hat_qmodel

// calculate marginal effect for 100 sqft increase in 2000 sqft home
regress price c.sqft#c.sqft
margins, dydx(sqft) at(sqft=20)

//(d) graph quadratic regression from c
twoway (scatter price sqft, msymbol(Oh))  ///     
       (connected price_hat_qmodel sqft)
	   
//(f) compute least squares residuals and plot against sqft
scatter ehat sqft
gen resid_quad = price - price_hat_qmodel
scatter resid_quad sqft

//(g) find SSE under Residual SS in models
regress price sqft
regress price sqft2

