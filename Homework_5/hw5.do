use chemical_small, clear

// (a) Estimate translog production function
// Generate other variables for hypotheses
generate lcapital2 = lcapital*lcapital 
generate llabor2 = llabor*llabor
generate lmaterials2 = lmaterials*lmaterials
generate lcap_llab = lcapital*llabor
generate lcap_lmat = lcapital*lmaterials
generate llab_lmat = llabor*lmaterials

// Generate regression
regress lsales lcapital llabor lmaterials lcapital2 llabor2 lmaterials2 lcap_llab lcap_lmat llab_lmat

// Test each coefficient significance with individual F-test
test lcapital
test llabor
test lmaterials
test lcapital2
test llabor2
test lmaterials2
test lcap_llab
test lcap_lmat
test llab_lmat

// (b)
test lcapital2 llabor2 lmaterials2 lcap_llab lcap_lmat llab_lmat

// (c) 
test (lcapital+llabor+lmaterials=1) (2*lcapital2+lcap_llab+lcap_lmat=0) (lcap_llab+2*llabor2+llab_lmat=0) (lcap_lmat+llab_lmat+2*lmaterials2=0)
