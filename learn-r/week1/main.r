x <- 40
print("hello there")

options(repos = list(CRAN = "http://cran.rstudio.com/"))

# How to install packages
install.packages("MASS")
install.packages("fBasics")

# How to load intalled packages
library("MASS")
library("fBasics")

x <- 2
y <- 5
ans <- x %/% y # this is integer division
print(ans)