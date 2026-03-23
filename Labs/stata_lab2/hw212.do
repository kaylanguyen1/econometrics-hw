// Homework 2.12 as an example

use stockton4, clear

describe
summarize
inspect

// (a)
twoway (scatter sprice livarea, msymbol(Oh))
 
// (b) 
regress sprice livarea
predict sprice_hat 
predict ehat, resid

sort livarea
twoway (scatter sprice livarea, msymbol(Oh)) (connected sprice_hat livarea)

// (c)
generate livarea2 = livarea*livarea
regress sprice livarea2
predict sprice_hat_qmodel

// calculate marginal effect, not necessary for hw but useful to check answer
regress sprice c.livarea#c.livarea
margins, dydx(livarea) at(livarea=15)

// (d) if you command line is too long, use /// to indicate continuation 
twoway (scatter sprice livarea, msymbol(Oh)) ///
       (connected sprice_hat livarea)        ///
       (connected sprice_hat_qmodel livarea)

// (e)
regress sprice livarea2 if lgelot > 0.5
// for same effect can also do:
regress sprice livarea2 if lgelot == 0

regress sprice livarea2 if lgelot < 0.5
//can also do:
regress sprice livarea2 if lgelot == 1

// (e) More advanced method
regress sprice c.livarea#c.livarea if lgelot > 0.5
margins, dydx(liv) at(liv=15)
regress sprice c.livarea#c.livarea if lgelot < 0.5
margins, dydx(liv) at(liv=15)
