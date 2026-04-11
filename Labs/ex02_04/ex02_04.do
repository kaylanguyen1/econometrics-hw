/* Example 2.4   
   Data from 1976   
   . constant slope
   . forecast near edu=0
*/ 

clear all

use wage1, clear
desc
sum wage lwage educ
regress wage educ

// prediction and confidence interval graph 
twoway lfitci wage educ, name(ci)

// prediction and confidence interval graph + scatterplot of data
twoway (lfitci wage educ) (scatter wage educ), name(scatter)

// prediction w/o confidence interval graph + scatterplot of data
twoway (lfit wage educ) (scatter wage educ), name(woci)

// If I do the prediction graph myself
regress wage educ
predict wage_hat
twoway (scatter wage educ) (line wage_hat educ), name(oldfashion)

// All four graphs in one for comparison
graph combine ci scatter woci oldfashion
**# Bookmark #1
**# Bookmark #2

// change the graphs to use lwage (log wage) - looks more accurate than prev graphs
twoway lfitci lwage educ, name(lci)

twoway (lfitci lwage educ) (scatter lwage educ), name(lscatter)

twoway (lfit wage educ) (scatter wage educ), name(lwoci)

regress lwage educ
predict lwage_hat
twoway (scatter lwage educ) (line lwage_hat educ), name(loldfashion)