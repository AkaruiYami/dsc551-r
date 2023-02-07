# Question 4
x <- c(2, 4, 6, 8, 10)
a <- c(3, 6, 9, 12, 15)
L <- round(x + sqrt(a^2 + x^2) / (3 * a), 4)

answ <- data.frame(x = x, a = a, L = L)
answ

rnorm()