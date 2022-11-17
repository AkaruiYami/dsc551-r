# a
Fish <- c(210, 180, 195, 220, 231, 199, 224)
Regular <- c(193, 186, 186, 223, 220, 183, 233)
dietdata <- data.frame(Fish, Regular)
dietdata

# b
par(mar = c(5, 5, 5, 5))
boxplot(Fish, Regular, names = c("Fish", "Regular"), ylab = "Systolic Blood Pressure", xlab = "Diet Program", main = "Special Diet Programs", cex.main = 3, cex.lab = 2)

# c
round(apply(dietdata, 2, mean), 2)

# d
paste("The average systolics blood pressure for fish oil diet's group is ", round(mean(dietdata$Fish), 3), "mmHg", sep = "")

# e
t.test(dietdata$Regular, mu = 210, conf.int = 0.95)

# f
# ~ H0: mu = 210
# ~ H1: mu != 210

# g
# ~ Since p-value is 0.0441 which is less than alpha (0.05), we can reject th enull hypothesis. Therefore, we have enough evidence to support researcher's claim.

# h
# ~ confinfidence interval = [183.9346, 222.9225]