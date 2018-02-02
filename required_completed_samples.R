# Title: Size of Required Completed Sample
# Desription: Calculate the number of completed samples required to achieve a
# given statistical confidence
# Author: James Harper, PE, ENV SP
# Date Created: February 2, 2018
# -----------------------------------------------------------------------------

z = 1.96      # z-score of desired confidence level (95% confidence -> 1.96)
p = 0.5       # expected sample heterogeneity
              # (p = 0.5 -> greatest heterogeneity, most conservative)
moe = 0.05    # acceptable sampling error or margin of error
N = 1000      # population size, if available/desired
              # (important when population < 20,000)

# Calculate required completed sample to based on above requirements
n = data.frame(Unknown.Population.Size = z^2*p*(1 - p)/moe^2,
               Known.Population.Size = 
                 N*p*(1 - p)/((N - 1)*(moe/z)^2 + (p*(1 - p))))
round(n, 0)