# Q1

S <- 20:38
W <- c(2, 6, 12)

## a = 19
## b = 21 25 31
## c = error
## d = 21 25 31 2 6 12 2 6 12 2 6 12
## e = 23 31 43

# Q2
## a
set.seed(777)
samples <- rnorm(2000, 150, 15)
head(samples, 100)

## b
s <- samples[1:100]
hist(s, prob = T, xlab = "samples", main = "Histogram of samples generated from Normal Distribution")
lines(density(s))

## c
xx <- round(matrix(s, ncol = 10, byrow = T), 1)
xx

## d
xx1 <- xx[1:50]
dim(xx1) <- c(5, 5, 2)
xx1

## e
xx1[2, 3, 1]
xx1[2, 1, 2]
xx1[4, 5, 2]

## f
xx2 <- matrix(xx1[, , 1], nrow = 5, byrow = T)
xx2