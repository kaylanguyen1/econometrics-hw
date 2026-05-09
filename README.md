# Econometrics Data Analysis Materials
Files, datasets, and completed homework in Stata/R from ECON 4355 (Econometrics) coursework.

## Content Overview

### Homework_1 Folder: 
1. `hw1q6.do` uses observations from `collegetown.dta`

> The data file *collegetown* contains observations on 500 single-family houses sold in Richardson, TX during 2009-2013. The data include sale price (in thousands of dollars), *PRICE*, and total interior area of the house in hundreds of square feet, *SQFT*.
>
>> (a) Plot house price against house size in a scatter diagram.

>> (b) Estimate the linear regression model $PRICE = \beta_{1} + \beta_{2}SQFT + e $.

>> (c) Estimate the quadratic regression model $PRICE = \alpha_{1} + \alpha_{2}SQFT^{2} + e$. Compute the marginal effect of an additional 100 square feet of living area in a home with 2000 square feet of living space.

>> (d) Graph the fitted curve for the model in part (c).

>> (f) For the regressions in (b) and (c), compute the least squares residuals and plot them against *SQFT*.

>> (g) One basis for choosing between these two specifications is how well the data are fit by the model. Compare the sum of squared residuals (SSE) from the models in (b) and (c).

2. `hw1q7.do` uses observations from `cps5.dta`

> The data file `cps5` contains observations on hourly wage rates, education, and other variables from the 2013 Current Population Survey (CPS).

>> (a) Obtain the summary statistics and histograms for the variables *WAGE* and *EDUC.*

>> (b) Estimate the linear regression $WAGE =\ beta_{1} + \beta_{2}EDUC + e$.

>> (c) Calculate the least squares residuals and plot them against *EDUC*.
 
>> (d) Estimate separate regressions for males, females, blacks, and whites.

>> (e) Estimate the quadratic regression $WAGE = \alpha_{1} + \alpha_{2}EDUC^{2} + e$. Estimate the margional effect of another year of education on wage for a person with 12 years of education and for a person with 16 years of education.

>> (f) Plot the fitted linear model from part (b) and the quadratic model from part (e) in the same graph with the data on *WAGE* and *EDUC*.


### Homework_2 Folder:
1. `hw2.do` uses observations from `capm5.dta`
>
>> In the data file *capm5* are data on the monthly returns of six firms (GE, IBM, Ford, Microsoft, Disney, and Exxon-Mobil), the rate of return on the market portfolio (*mkt*), and the rate of return on the risk-free asset (*riskfree*). The 180 observations cover January 1998 to December 2012.

>> (a) Construct 95% interval estimates of Exxon-Mobil’s and Microsoft’s “beta”.

>> (b) Test at the 5% level of significance the hypothesis that Ford’s “beta” value is one against the alternative that it is not equal to one. Repeat the test and state your conclusions for General Electric’s stock and Exxon-Mobil’s stock.

>> (c) Test at the 5% level of significance the null hypothesis that Exxon-Mobil’s “beta” value is equal to one against the alternative that it is less than one.

>> (d) Test at the 5% significance level, the null hypothesis that the intercept term in the CAPM model for Ford’s stock is zero, against the alternative that it is not. Repeat the test and state your conclusions for General Electric’s stock and Exxon-Mobil’s stock.


### Homework_3 Folder:
1. `hw3.do` uses observations from `cps5.dta`  

>> For this exercise use the file *cps5*. In this exercise, you will use subsamples of observations consisting of (i) white males, (ii) white females, (iii) black males, and (iv) black females.
>>
>> (a) For each sample partition, obtain the summary statistics of *WAGE*. 

>> (c) For each sample partition, estimate the log-linear model $ln(WAGE) + \beta_{1} + \beta_{2}EDUC + e$.
>>

### Homework_4 Folder:
1. `hw4q3.do` uses observations from `collegetown.dta`

>> We will be concerned with the selling price in thousands of dollars *(PRICE)*, the size of the house in hundreds of square feet *(SQFT)*, and the age of the house measured as a categorical variable *(AGE)*, with 1 representing the newest and 11 the oldest. Use all observations to estimate the following regression model: $PRICE = \beta_{1} + \beta_{2}SQFT + \beta_{3}SQFT \times AGE + e$.

>> (a) Report the results. Are the estimated coefficients significantly different from zero?


### Homework_5 Folder:
1. Consider a translog production function where output is measured as firm sales and there are three inputs: capital, labor, and materials. This function can be written as

> $$LSALES  = \beta_{C} + \beta_{K}K + \beta_{L}L + \beta_{M}M + \beta_{KK}K^{2} + \beta_{LL}L^{2} + \beta_{MM}M^{2} + \beta_{KL}KL + \beta_{KM}KM + \beta_{LM}LM + e$$ 

> where *LSALES* is the log of sales, *K*, *L*, and *M* are the logs of capital, labor, and materials, respectively. There are two hypotheses that are likely to be of interest:

> $$H_{0}^{(1)}: \beta_{KK} = 0, \beta_{LL} = 0, \beta_{KL} = 0, \beta_{KM} = 0, \beta_{LM} = 0$$

> $$H_{0}^{(2)}: \beta_{K} + \beta_{L} + \beta_{M} = 1
>>  2\beta_{KK} + \beta_{KL} + \beta_{KM} = 0
>> \beta_{KL} + 2\beta_{LL} + \beta_{LM} = 0
>> \beta_{KM} + \beta_{LM} + 2\beta_{MM} = 0$$

> The data file *chemical_small* contains observations on 1200 firms in a chemical industry in the year 2006.

>> (a) Use these data to estimate the translog production function. Are all the coefficient estimates significant at a 5% level of significance?

>> (b) Test $H_{0}^{(1)}$ at a 5% significance level.

>> (c) Test $H_{0}^{(2)}$ at a 5% significance level.

### Chapter7 Folder

1. `wage1.do` uses observations from `wage1.dta` to study nonlinear relationships

### R_intro Folder

1. `intro.R` uses observations from `food.txt` to introduce the use of R in the study of econometrics

### Labs Folder

1. demo_ols

> `demo_ols.do` shows examples of determining Ordinary Least Squares (OLS) Estimation

2. ex02_04

> `ex02_04.do` uses observations from `WAGE1.DTA` to show examples of prediction and confidence intervals in Stata and how to plot them

3. food

> `food_student.do` uses observations from `food.dta` and `food.txt` to introduce the use of Stata in economic statistical analysis

4. stata_lab2

> `hw212.do` uses observations from `stockton4.dta` to show how to use Stata to estimate linear and quadratic models and calculate the marginal effect of a variable from them.


## Stata Overview

#### File Extensions:

* `.do` file: shell script of commands

* `.dta` file: binary data file that can be accessed through Stata

#### Using Do Files:

* in Stata app, open or create a Do file by accessing the Do-file editor with the command `doedit filename.do` in the Stata command window

* to write comments, use `/` or `//`

#### Basic Commands

* `clear`: clear all variables in variable window

* `dir`: show contents in current directory

* `cd`: change directory to whatever directory is after command

* `insheet using filename.txt`: read variables from filename.txt into Stata

* `save filename, replace`: save file in Stata format (.dta)

* `use filename, clear`: read file that's already in Stata format (.dta)

* `describe` or `d`: desribes dataset and variables (# of observations, variables, data types, sorted by, etc.)

* `summarize` or `sum`: show summary statistics for each variable (# of observations, mean, stdev, min, max)

* `summarize var_name, detail`: show more detailed summary statistics for var_name like percentiles, variance, etc.

* `inspect` or `insp`: inspect the data for each variable (each variable's histogram, sorted observations)

* `generate new_var = var_def` or `gen`: create new variable named new_var with value var_def

* `regress dependent_var independent_vars`: creates OLS regression between variables

* `generate new_ln_var = ln(var_def)`: create a new variable named new_ln_var that is the natural log of var_def

* `test var_name = 0`: hypothesis testing for var_name, 0 can be replaced by any number

* `predict var_hat`: create var_hat containing predicted values 

* `predict var_hat, resid`: calculate residuals

* `regress dependent_var independent_var if independent_var < 700`: estimate regression from defined subset of data

* `twoway (scatter dependent_var independent_var) (connected dependent_varhat independent_var) (connected varhat independent_var)`: makes scatterplot of variables then line of fitted values for varhat and independent variable

* `browse`: see datapoints in opened .dta file

* `twoway lfitcit dependent_var independent_var, name(ci)`: graphs 95% confidence interval for each $x_{0$} value 

* `twoway (lfitci dep_var indep_var) (scatter dep_var indep_var), name(scatter)`: graph 95% confidence interval for every $x_{0}$ with scatter plot of data from dataset

* `graph combine ci scatter`: see multiple graphs (like ci and scatter from previous commands) in the same window


