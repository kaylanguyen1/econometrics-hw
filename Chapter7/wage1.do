/* Dummy variable discussion
   Data file wage1.dta
   You are strongly encouraged to replicate the results in this handout 
*/

* read the data
use wage1, clear

sum
 
tab female

* (1) To include a categorical variable, put an i. in front of the varname.
*     Stata calls this a factor variable. 
* Intercept dummy
set showbaselevels off
reg lwage educ exper tenure i.female 
* (2) Interactions involving dummies
*     (a) interactions between dummies
reg lwage educ exper tenure female married
reg lwage educ exper tenure i.female i.married
*         Now we will turn on the baselevels to see the "same" tables
set showbaselevels on
reg lwage educ exper tenure i.female i.married
*         Once you are comfortable with the interpretations, you can turn baselevels off
*         You can use different baselevels
reg lwage educ exper tenure b1.female i.married
*         interactions: ## or # connect the two categorical variables. 
*         ## include both main effects and interaction
*         #  include only interaction
*         ## and # assume categorical variables, so no i. is needed. 
reg lwage educ exper tenure female##married
*         same as
reg lwage educ exper tenure i.female i.married female#married
margins married##female 
marginsplot

*     (b) allowing different slopes - interactions with continuous variables
reg lwage educ exper tenure i.married i.female
*         Now add female*edu
reg lwage educ exper tenure i.married i.female female#c.educ 
margins female, dydx(educ) 
margins female, at(educ=(0(1)18)) 
marginsplot

* Notice that in the regression fem*edu is not significant.
* So you can conclude that the slope for educ (return to education)
* is the same for men and women. The two slopes are almost identical
* in the graph.

* Question: What if you want to test the poolability of men and women?
*           In other words, you want to test the hypothesis that all
*           the coefficients are the same between men and women. 

* (3) Interactions involving continous variables or polynomials
reg lwage c.educ##c.exper tenure i.married i.female
reg lwage c.educ##c.educ exper tenure i.married i.female
* The following command draws the relationship between lwage and educ
margins, at(educ=(0(1)18))
marginsplot
* The following command draws the marginal effect of educ at each value
margins, dydx(educ) at(educ=(0(1)18))
marginsplot
