// Load in dataset
// price in thousands of dollars
// sqft in 100s sqft
// age is categorical variable: 1 = newest, 11 = oldest

use collegetown, clear

// Look at data, optional
describe
summarize
inspect

// (a) Estimate multiple regression model

// Generate interaction term 
generate sqft_age = sqft*age
// Run regression
regress price sqft sqft_age

