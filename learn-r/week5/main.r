# Data Analysis
library(MASS)
data(road)
str(road)
head(road)
attach(road)

summary(road)
fivenum(deaths)

library(pastecs)
stat.desc(road) # need pastecs

library(psych)
describe(road) # need psych

min_num <- apply(road, 2, min)
max_num <- apply(road, 2, max)
mean_num <- apply(road, 2, mean)
var_num <- apply(road, 2, var)
sd_num <- apply(road, 2, sd)
median_num <- apply(road, 2, median)
quan_num <- apply(road, 2, quantile)[4, ]
skew_num <- apply(road, 2, skew)

min_num
max_num
mean_num
var_num
sd_num
median_num
quan_num
skew_num

row_names <- c(
    "Min",
    "Max",
    "Mean",
    "Variance",
    "Sd",
    "Median",
    "Quartile",
    "Skewness"
)

summary3 <- round(rbind(
    min_num,
    max_num,
    mean_num,
    var_num,
    sd_num,
    median_num,
    quan_num,
    skew_num
), 2)
row.names(summary3) <- row_names
summary3


# Normality Test
# Data must be random variable and normally distributed
# Only use on numerical data

str(road)

# Kolmogorov-Smirnov
ks.test(rural, "pnorm", mean(rural), sd(rural))

# Shapiro-Wilk Test
shapiro.test(rural)

# Hypothesis Testing
# ~ H0 : The rural datasets are normally distributed
# ~ H1: The rural dataset are not normally distributed
# ~ p-value: 0.2054
# ~ Decision: Since p-value is 0.2054 greater than alpha (0.05), then we fail to reject the null hyphothesis.
# ~ Therefore, rural datasets are normally distributed.

# Visualize data
qqnorm(rural)
qqline(rural, col = "red")
# ~ Interpretation: Since most of the points lie on the straight line, the rural datasete is normally distributed.

# One sample t-test
oct <- read.csv("learn-r/SAMPLE DATA/Octopus.csv", header = T, sep = ";")
oct$Sex <- as.factor(oct$Sex) # or oct[,"Sex"] <- factor(oct[,"Sex"])
str(oct)
head(oct)

is.na(oct)
summary(oct)

shapiro.test(oct$Weight)
# ~ Since p-value is 0.0733 greater than alpha (0.05), we fail to reject the null hypothesis. Therefore, the weight is normally distributed.

qqnorm(oct$Weight)
qqline(oct$Weight, col = "red")

# How to know either 1 tail test or 2 tail test?
# 2 tail test -> H1 is not equal
# 1 tail test -> H1 is more / less

## Researcher claim that the Weight is not 2700 gram
# 2 tail test
t.test(oct$Weight, mu = 2700, conf.int = 0.95)

# ~ H0: mu = 2700
# ~ H1: mu != 2700

# ~ since p-value is 0.00956 < alpha (0.05), we reject the null hypothesis. Therefore, the average weight is not 2700 gram.

# 1 tail t test
t.test(oct$Weight, mu = 2700, conf.int = 0.95, alternative = "greater")
t.test(oct$Weight, mu = 2700, conf.int = 0.95, alternative = "less")