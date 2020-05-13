# Author: Julien Diot juliendiot@ut-biomet.org
# 2020 The University of Tokyo
#
# Description:
# Script used as examples for "R Tips & Tricks"


# profvis ------------------------------------------------------------

library(profvis)

f1 <- function() {
  print("f1")
  Sys.sleep(1)
}
f2 <- function() {
  print("f2")
  f1()
  f3()
}
f3 <- function() {
  print("f3")
  Sys.sleep(0.5)
}

f <- function() {
  f1()
  f2()
  f3()
}










# f1 <- function() {
#   print("f1")
#   pause(1)
# }
# f2 <- function() {
#   print("f2")
#   f1()
#   f3()
# }
# f3 <- function() {
#   print("f3")
#   pause(0.5)
# }
#
# f <- function() {
#   f1()
#   f2()
#   f3()
# }
