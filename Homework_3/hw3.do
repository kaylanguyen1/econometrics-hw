// load cps5.dta dataset
use cps5, clear

// a) obtain summary statistics of wage for (i) white males, (ii) white females,
// (iii) black males, (iv) black females
sum wage if white==1 & female==0 // white male partition
sum wage if white==1 & female==1 // white female partition
sum wage if black==1 & female==0 // black male partition
sum wage if black==1 & female==1 // black female partition

// (c) estimate log-lin model for each partition
gen ln_wage=ln(wage) // define ln_wage as ln(wage)

// white males
regress ln_wage educ if white==1 & female==0 

// white females
regress ln_wage educ if white==1 & female==1 

// black males
regress ln_wage educ if black==1 & female==0

// black females
regress ln_wage educ if black==1 & female==1
