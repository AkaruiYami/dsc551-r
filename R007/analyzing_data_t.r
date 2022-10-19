# print first 5 rows of the mtcars data
print(mtcars[1:5, ])
print(mtcars[, 1:5])

var(mtcars$mpg)
sd(mtcars$mpg)
sum(mtcars$wt)

mtcars[mtcars$hp == max(mtcars$hp), ]

x <- mtcars[mtcars$am == 0, ]
x[x$qsec == min(x$qsec), ]

# Grouping data
by(mtcars$hp, mtcars$am, mean)
tapply(mtcars$hp, mtcars$am, mean)

by(mtcars$wt, mtcars$vs, sum)
tapply(mtcars$wt, mtcars$vs, sum)
