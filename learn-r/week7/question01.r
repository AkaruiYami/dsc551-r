# Question 1
library(MASS)
attach(UScereal)
str(UScereal)

# a
new_dat = UScereal[c("calories", "fat", "fibre", "sugars", "potassium")]
new_dat

# b
new_dat2 = new_dat["fibre" > 3.75,]
new_dat2

# c
new_dat3 = new_dat2[order(new_dat2$calories, decreasing = T), ]
new_dat3

# d
new_dat4 = new_dat3
new_dat4$ratio_val = round(new_dat4$calories / new_dat4$potassium, 2)
new_dat4
