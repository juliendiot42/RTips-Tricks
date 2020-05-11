# Author: Julien Diot juliendiot@ut-biomet.org
# 2020 The University of Tokyo
#
# Description:
# Script used as examples for "R Tips & Tricks"



# Jobs examples ------------------------------------------------------------

x <- 0
for (i in 1:10) {
  Sys.sleep(0.1)
}
x <- x + 1
print("step 1 finished")


for (i in 1:10) {
  Sys.sleep(0.1)
}
x <- x + 1
print("step 2 finished")


for (i in 1:10) {
  Sys.sleep(0.1)
}
x <- x + 1
print("step 2 finished")
print(paste("Final result x =", x))
