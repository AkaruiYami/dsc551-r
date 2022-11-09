# creating function
z <- c(12.3, 15.4, 23.6, 33.2, 12.3, 15.8)
length(z)

func1 <- function(x) {
    mu <- median(x)
    m <- mean(x)
    s <- sd(x)
    r <- round(rbind(mu, m, s), 3)
    r <- data.frame(r)
    rownames(r) <- c("mu", "mean", "sd")
    print(r)
}

func1(z)


sqr_seq <- function(n) {
    for (i in 1:n) {
        print(i^2)
    }
}

sqr_seq(5)


count_even <- function(x) {
    n <- 0
    for (i in x) {
        if (i %% 2 == 0) {
            n <- n + 1
        }
    }
    print(n)
}

count_even(c(1, 2, 3, 4, 5, 6, 7, 8))


f1 <- function() {
    for (t in 1:10) {
        r <- round(3 * exp(t) + 4.5 * t, 2)
        out <- cbind(t, r)
        print(out)
    }
}
f1()

f2 <- function() {
    t <- 1:10
    r <- round(3 * exp(t) + 4.5 * t, 2)
    out <- cbind(t, r)
    colnames(out) <- c("Time", "Result")
    print(out)
}
f2()

# Random Random Number Generator

# Uniform random number
set.seed(100)
x <- round(runif(100, 2, 5), 2)
hist(x, prob = T)


# Binomial Random Number Generator
set.seed(100)
x <- rbinom(50, 10, 0.8)
hist(x, prob = T)

# Poisson Random Number Generator
set.seed(246)
x <- rpois(5000, 10)
x[1:20]
hist(x, prob = T)

# Normal Random Number Generator
set.seed(999)
x <- round(rnorm(1000, 27, 5), 2)
x[1:25]
hist(x, prob = T)