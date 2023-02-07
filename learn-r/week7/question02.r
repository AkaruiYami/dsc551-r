# a
Gender = c(
    "Male",
    "Female",
    "Female",
    "Female",
    "Male",
    "Female",
    "Male",
    "Female",
    "Female",
    "Male",
    "Male",
    "Female"
)
Salary = c(61, 56, 57, 55, 63, 55, 57, 55, 51, 53, 50, 52)
daily_salary = data.frame(Gender = Gender, Salary = Salary)
daily_salary$Gender = factor(Gender)
str(daily_salary)

# b
boxplot(daily_salary$Salary~ daily_salary$Gender)

# c
# Interpretation: Salary for Male is largely distributated compare to Female

# d
t.test(daily_salary$Salary, mu = 55, conf.level = 0.9)
#~ Since the p-value at alpha of 0.1 is 0.7131 which is greater than alpha, therefore we have enough evidence to reject null hypothesis. The average daily salar of subtitute teachers is not RM55 per day.

# e
t.test(daily_salary$Salary, mu = 55, conf.level = 0.95)
