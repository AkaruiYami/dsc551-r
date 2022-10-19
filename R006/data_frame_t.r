# Vectors store elements of the same type using one dimension.
# Matrices are like vectors and have 2 dimensions: rows and columns.
# Lists are similar to vectors and allow you to store different types of elements.

# A data frame is a table, where each column has a name and can contain any type of data.
# Each column must contain the same number of data items.

# We can create a data frame using the data.frame() function.

x <- data.frame(
    "id" = 1:3,
    "name" = c("Akarui", "Yami", "Kuro"),
    "age" = c(17, 21, 24)
)
print(x)
print(x[["name"]])
print(x$age)
print(x[[2]])
print(x[2])
print(x[[3, 2]])
print(x[[3, "age"]])
print(x$name[1])

# data frame operation
x$hoby <- c("Coding", "Reading", "Gaming")
print(x)
print(x[x$age > 20, ])
print(subset(x, age > 20))

print("--------------")
print(mean(x$age))
print(summary(x))

gender <- factor(c("Male", "Female", "Male"))
print(gender)
print(levels(gender))
print(table(gender))

x$gender <- gender
print(x)