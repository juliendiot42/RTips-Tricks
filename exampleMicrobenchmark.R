# example of microbenchmark package
#
# Create a list of 1000 random numbers

library(microbenchmark)

n <- 1000
print(microbenchmark(
  test1 = {
    x <- list()
    for (i in 1:n) {
      x[[length(x) + 1]] <- rnorm(1)
    }
  },
  test2 = {
    x <- vector(mode = "list", n)
    for (i in 1:n) {
      x[[i]] <- rnorm(1)
    }
  },
  test3 = {
    x <- lapply(rep(1,n), rnorm)
  },
  test4 = {
    x <- as.list(rnorm(n))
  }
))
