# Author: Julien Diot juliendiot@ut-biomet.org
# 2020 The University of Tokyo
#
# Description:
# Script used as examples for "R Tips & Tricks"


# Diagnostics ------------------------------------------------------------
# Activate the diagnostics analys is in the Global option to see it in action.

library(blogdown) # try with an uninstalled package

print(x)

square <- function(x) {
  y <- 1
  x^2
}

for (i in c(1:3)) {
  j<-i^2
  rnorm(sd = j)
}
)
