/* Simulation of simple OLS */ 

clear all 
 
set seed 12345

/**************************************
You can modify the following quantities
**************************************/

global n "150"            // no of observations
global sd_error "1.0"     // sd of the error term
global s_x "3.2"          // "spreadout" of x  
global a "1.5"            // intercept
global b "2.0"            // slope 

set obs $n
gen e = rnormal() * $sd_error
gen x = runiform() * $s_x 
gen y = $a + $b * x + e

sum x y
regress y x

/***************************************
Usually we would repeat the above process many times
to call it "Monte Carlo simulations." But we only
did it once above because we didn't want to get into 
more advanced Stata programming and other issues. 
***************************************/

// (1) What if you move the x's away from 0 to see the 
// impact on Var(a)?  

gen xnew = x+100
regress y xnew

// (2) What if we multiply y by 100?

gen y100 = y*100
regress y100 x

// (3) What if we multiply x by 100?

gen x100 = x*100
regress y x100

// (4) What if we multiply both by 100?

regress y100 x100
