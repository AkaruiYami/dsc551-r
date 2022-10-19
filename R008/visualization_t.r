# Plotting
png(file = "R008\\chart.png")
plot(1:10, main = "My Chart", xlab = "The x-axis", ylab = "The y-axis")

x <- mtcars$wt
y <- mtcars$drat
png(file = "R008\\chart2.png")
plot(x, y, xlab = "weight", ylab = "rar axle ratio")

# Line Graphs
png(file = "R008\\chart3.png")
plot(1:10, type = "l")

# Draw multiple line on graph
line1 <- c(0, 8, 16, 32)
line2 <- c(2, 5, 11, 20)

png(file = "R008\\chart4.png")
plot(line1, type = "l", col = "blue")
lines(line2, type = "l", col = "red")


# Example 1
x1 <- c(1, 10)
y1 <- c(1, 10)
x2 <- c(1, 10)
y2 <- c(10, 1)

png(file = "R008\\chart5.png")
plot(x1, y1, type = "l", col = "green")
lines(x2, y2, type = "l", col = "yellow")

# Bar Charts
png(file = "R008\\chart6.png")
barplot(mtcars$hp, names.arg = rownames(mtcars))

# Horizontal Bar Chart
data <- c(10, 42, 34, 12, 44)
rowlabels <- c("A", "B", "C", "D", "E")

png(file = "R008\\chart7.png")
barplot(data, names.arg = rowlabels, horiz = TRUE, col = "blue")


# Pie Chart
x <- c(8, 10, 42, 22)
y <- c("A", "B", "C", "D")

png(file = "R008\\chart8.png")
pie(x, label = y)


# Boxplot
png(file = "R008\\chart9.png")
boxplot(mtcars$mpg)


# Histogram
png(file = "R008\\chart10.png")
hist(mtcars$hp)