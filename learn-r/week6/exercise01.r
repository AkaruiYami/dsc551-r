# Q1
## a
X <- matrix(3:6, nrow = 2)
Y <- matrix(rep(5, 4), nrow = 2)

### i
X
Y

### ii
X + Y
X * Y

### iii
solve(X)

### iv
det(X)
det(Y)

## b
set.seed(100)
samples <- rpois(2000, 10)
samples[1:100]

## c
mean_calories <- 225
variance <- 100

set.seed(133)
sim_data <- rnorm(3000, mean_calories, sqrt(100))

# Q2
## a
AA <- c(24, 45, 61, 51, 88)
labs <- c("A1", "A2", "A3", "A4", "A5")
col <- c("red", "blue", "yellow", "black", "pink")
pie(AA, labels = labs, col = col, main = "Figure 1", cex.main = 3, cex.lab = 2)

## b
### i
data1 <- list(stand.proc = c(61, 68, 69, 74, 58, 63), faci.tools = c(32, 42, 40, 34, 38, 33))
dat <- data.frame(data1)
dat

### ii
str(dat)
par(mfcol = c(1, 2))
title <- "The Completion Time Distribution for Standard Procedure"
label <- "Completion Time (minutes)"
hist(dat$stand.proc, ylim = c(0, 2), main = title, xlab = label, yaxt = "n")
axis(2, at = seq(0, 2, 0.5))

title <- "The Completion Time Distribution for Facilitation Tools"
boxplot(dat$faci.tools, main = title, ylab = label)

### iii
Mean <- apply(dat, 2, mean)
Stand.Dev <- apply(dat, 2, sd)
Median <- apply(dat, 2, median)
sptf <- cbind(Mean, Stand.Dev, Median)
sptf

# Q3
## a
t.test(dat$faci.tools, mu = 34, conf.int = 0.95, alternative = "greater")

## b
# ~ Since the p-value is 0.5 > than alpha (0.05), we fail to reject null hypothesis.

## c
# ~ Yes. Since we fail to reject null hypothesis, we can conclude that the mean time of completion using facilitation tools is more than 34 minutes.

# Q4
## a
summary <- function(x) {
    list(
        a = apply(x, 2, mean),
        b = sqrt(apply(x, 2, sd))
    )
}

## b
### i
b1 <- function(n, xbar, ybar) {
    xt <- 1:n - xbar
    yt <- 1:n - ybar
    top <- sum(xt * yt)
    bot <- sqrt(sum(xt))
    r <- top / bot
    r
}

### ii
b0 <- function(b1, xbar, ybar) {
    ybar - b1 * xbar
}