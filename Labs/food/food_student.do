/* Demo program for the tutorial */
/* To download the files into your harddisk, point your mouse 
   to the file, click on the right button and choose "Save 
   target as ...".
   Suppose you have downloaded the files food.txt and food.dta 
   in the directory \simpson\homer on your harddisk. 
   If you want to change Stata to the directory, type in the 
   command window:
   cd "\simpson\homer" 
*/

clear    /* clear everything in the memory. A good practice */

dir /* Show the contents in the current directory. If you do not see the 
       two data files, issue the following commands to change directory */

// cd \simpson\homer     /* change directory if necessary */

/* Two ways to read data */

/* Method 1: If you have a text file with variable names on the first row */

insheet using food.txt  /* Now you should see two variables in the Variable 
                           Window. To save it in Stata format, try the 
                           command "save myfood, replace"                 */

/* Method 2: If you have a data file in Stata format already */
use food, clear      /* Try "use myfood, clear" to read the file 
                        you just saved.                       */

d         /* describe the data set and variables */
sum       /* summary statistics                  */
insp      /* inspect the data                    */

* Generate a new variable
generate income2 = income^2

reg food income   /* regression          */
test income=0     /* hypothesis testing  */
test income=1

predict foodhat   /* prediction          */
twoway (scatter food income) (connected foodhat income) /* graph */

* Generate residuals both ways and see if they are the same.
predict ehat, resid
gen ehat_my = food - _b[_cons] - _b[income]*income
* Use Data Browse to see if they are the same. 

* Only use some of the observations in a regression or in a graph
regress food income if income <720
 
/* Practice Question: Consider a log-log model.
1. Read the data (either the Stata format or the text format) into Stata.
2. Create two new variables ln_food = ln(food), ln_income = ln(income).
3. Use describe, summarize, and inspect commands on the new data.
4. Regress ln_food on ln_income. How do you interpret the slope coeff?
5. Create yhat and ehat for the new model.
6. Draw a graph with ln_income on the horizontal axis, the actual ln_food,
   yhat, and ehat on the vertical axis. 
*/
