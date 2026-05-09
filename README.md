# Econometrics Data Analysis Materials
Files, datasets, and completed homework in Stata/R from ECON 4355 (Econometrics) coursework.

# Content Overview

## Homework_1 Folder: 
> 1. `hw1q6.do` uses observations from `collegetown.dta`
>
> The data file *collegetown* contains observations on 500 single-family houses sold in Richardson, TX during 2009-2013. The data include sale price (in thousands of dollars), *PRICE*, and total interior area of the house in hundreds of square feet, *SQFT*.
>
    (a) Plot house price against house size in a scatter diagram.

    (b) Estimate the linear regression model $PRICE = beta_{1} + beta_{2}SQFT + e $.

    (c) Estimate the quadratic regression model $PRICE = alpha_{1} + alpha_{2}SQFT^{2} + e$. Compute the marginal effect of an additional 100 square feet of living area in a home with 2000 square feet of living space.

    (d) Graph the fitted curve for the model in part (c).

    (f) For the regressions in (b) and (c), compute the least squares residuals and plot them against *SQFT*.

    (g) One basis for choosing between these two specifications is how well the data are fit by the model. Compare the sum of squared residuals (SSE) from the models in (b) and (c).
> 
> 2. `hw1q7.do` uses observations from `cps5.dta`
> 
> The data file `cps5` contains observations on hourly wage rates, education, and other variables from the 2013 Current Population Survey (CPS).
>
    (a) Obtain the summary statistics and histograms for the variables *WAGE* and *EDUC.*

    (b) Estimate the linear regression $WAGE = beta_{1} + beta_{2}EDUC + e$.

    (c) Calculate the least squares residuals and plot them against *EDUC*.
 
    (d) Estimate separate regressions for males, females, blacks, and whites.

    (e) Estimate the quadratic regression $WAGE = alpha_{1} + alpha_{2}EDUC^{2} + e$. Estimate the margional effect of another year of education on wage for a person with 12 years of education and for a person with 16 years of education.

    (f) Plot the fitted linear model from part (b) and the quadratic model from part (e) in the same graph with the data on *WAGE* and *EDUC*.


## Homework_2 Folder:
> 1. `hw2.do` uses observations from `capm5.dta`
>
>> In the data file *capm5* are data on the monthly returns of six firms (GE, IBM, Ford, Microsoft, Disney, and Exxon-Mobil), the rate of return on the market portfolio (*mkt*), and the rate of return on the risk-free asset (*riskfree*). The 180 observations cover January 1998 to December 2012.

    (a) Construct 95% interval estimates of Exxon-Mobil’s and Microsoft’s “beta”.

    (b) Test at the 5% level of significance the hypothesis that Ford’s “beta” value is one against the alternative that it is not equal to one. Repeat the test and state your conclusions for General Electric’s stock and Exxon-Mobil’s stock.

    (c) Test at the 5% level of significance the null hypothesis that Exxon-Mobil’s “beta” value is equal to one against the alternative that it is less than one.

    (d) Test at the 5% significance level, the null hypothesis that the intercept term in the CAPM model for Ford’s stock is zero, against the alternative that it is not. Repeat the test and state your conclusions for General Electric’s stock and Exxon-Mobil’s stock.


## Homework_3 Folder:
> 1. `hw3.do` uses observations from `cps5.dta  
>
>> For this exercise use the file *cps5*. In this exercise, you will use subsamples of observations consisting of (i) white males, (ii) white females, (iii) black males, and (iv) black females.
>>
>> (a) For each sample partition, obtain the summary statistics of *WAGE*. 

>> (c) For each sample partition, estimate the log-linear model $ln(WAGE) + beta_{1} + beta_{2}EDUC + e$.
>>

## Homework_4 Folder:
> 1. `hw4q3.do` uses observations from `collegetown.dta`
>
>> We will be concerned with the selling price in thousands of dollars *(PRICE)*, the size of the house in hundreds of square feet *(SQFT)*, and the age of the house measured as a categorical variable *(AGE)*, with 1 representing the newest and 11 the oldest. Use all observations to estimate the following regression model: $PRICE = beta_{1} + beta_{2}SQFT + beta_{3}(SQFT)(AGE} + e$.

    (a) Report the results. Are the estimted coefficients significantly different from zero?


## Homework_5 Folder:
> 1. Consider a translog production function where output is measured as firm sales and there are three inputs: capital, labor, and materials. This function can be written as\

    $$LSALES  = beta_{C} + beta_{K}K + beta_{L}L + beta_{M}M + beta_{KK}K^{2} + beta_{LL}L^{2} + beta_{MM}M^{2} + beta_{KL}KL + beta_{KM}KM + beta_{LM}LM + e$$ 

> where *LSALES* is the log of sales, *K*, *L*, and *M* are the logs of capital, labor, and materials, respectively. There are two hypotheses that are likely to be of interest:

    $$H_{0}^{(1)}: beta_{KK} = 0, beta_{LL} = 0, beta_{KL} = 0, beta_{KM} = 0, beta_{LM} = 0$$

    $$H_{0}^{(2)}: beta_{K} + beta_{L} + beta_{M} = 1, 2beta_{KK} + beta_{KL} + beta_{KM} = 0, beta_{KL} + 2beta_{LL} + beta_{LM} = 0, beta_{KM} + beta_{LM} + 2beta_{MM} = 0$$

> The data file *chemical_small* contains observations on 1200 firms in a chemical industry in the year 2006.

    (a) Use these data to estimate the translog production function. Are all the coefficient estimates significant at a 5% level of significance?

    (b) Test $H_{0}^{(1)}$ at a 5% significance level.

    (c) Test $H_{0}^{(2)}$ at a 5% significance level.
