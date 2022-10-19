student <- c("Amir" = 22, "Yami" = 21)
print(student["Amir"])
print(student[["Amir"]])

age <- c(1, 2, 3, 4, 5)
print(age[-1])
print(age[-2])
print(age[2:3])

# Vector functions
print(length(age))
print(sum(age))
print(sort(age, decreasing = TRUE))

# Complex sequence
seq1 <- seq(1, 15, by = 2)
print(seq1)
print(seq1[seq1 - 2 > 4])

# Vector Arithmetics
v1 <- c(2, 5, 7, 4, 9)
v2 <- c(5, 4, 9, 2, 7)

print(v1 + v2)
print(v1 - v2)
print(v1 * v2)
print(v1 / v2)

print(mean(v1))
print(median(v1))