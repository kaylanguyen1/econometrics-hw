// load capm5.dta dataset
use capm5, clear

describe
summarize
inspect

// generate rm - rf variable
generate mktpremium=mkt-riskfree

// (a) Get regressions for Exxon-Mobil and Microsoft
// variable rj - rf for Exxon-Mobil
generate xompremium=xom-riskfree
//generate regression for Exxon-Mobil
regress xompremium mktpremium

// variable rj-rf for Microsoft
generate msftpremium=msft-riskfree
//generate regression for Microsoft
regress msftpremium mktpremium

// (b) Get regressions for Ford and General Electric
// variable rj-rf for Ford
generate fordpremium=ford-riskfree
// generate regression for Ford
regress fordpremium mktpremium

// variable rj-rf for General Electric
generate gepremium=ge-riskfree
// generate regression for General Electric
regress gepremium mktpremium