# all element must be the same type
x <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
print(x)
print(x[2, 2])
print(x[2, ])
print(x[, 3])

x[1, 1] <- 110
print(x)

# matrix operation
print(t(x))