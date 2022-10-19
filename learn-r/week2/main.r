# Vector
vec1 <- c(1, 3, 5, 21)

# Sequance
seq1 <- seq(1, 10)
seq2 <- seq(1, 10, by = 2)
seq3 <- seq(10, 1, by = -2)
seq4 <- seq(0, 20, length = 6)
seq4 <- seq(0, 20, length.out = 6)
seq5 <- round(seq(0, 20, length = 6), 2)

# Replicate

rep1 <- rep(5, 3)

# Filtering

x <- 1:10
x[5] <- 100
y <- x <= 10

x[-2] # print everythong except element at position 2

# Factor analyze categorical data

data1 <- factor(c("Malay", "Malay", "Indian", "Chinese"))
table(data1)
str(data1)

# setting the label
label <- c("C", "I", "M")
data1 <- factor(c("Malay", "Malay", "Indian", "Chinese"), label = label)

# matrices
mat1 <- matrix(x, nrow = 2)
mat2 <- matrix(x, 2)
mat3 <- matrix(x, ncol = 2)

# Array
a <- 1:24
a1 <- array(a, c(3, 4, 2))
a1

# Data Frame
# can contains column with different data type
# cannot do matrix multiplication
mat1
data.frame(mat1)

names <- c("Yami", "Kuro", "Akarui")
gender <- factor(c("Male", "Female", "Male"))
age <- c(18, 19, 22)
class <- factor(c("Knight", "Archer", "Mage"))

data1 <- data.frame(names, gender, age, class)
data1

str(data1)
summary(data1)

table(data1$class)


rbind(data1, list(names = "Aya", gender = "Female", age = 26, class = "Mage"))

# List
# May contain different data type
z <- list("abc", 10, FALSE)
names(z) <- c("alpha", "beta", "gamma")
a <- list(alpha = "abc", beta = 10, gamma = FALSE)
a$extra <- 1