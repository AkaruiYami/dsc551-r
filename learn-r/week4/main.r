# Frequency table is a qualitative vriable
# Frequency table is for 1 variable
# Cross tabulation table is to analyze 2 or more qualitative variables
# Cross tabulation table (contigency table) is 2 or more variables

# Data Visualization
# 1) Presenting categorical data
library(foreign)
bmi_data <- read.spss("learn-r/SAMPLE DATA/BMI.sav", to.data.frame = TRUE)
str(bmi_data)
attach(bmi_data)

# 1.1) Frequency table
table(Program)

# 1.2) Cross tabulation table
table(gender, Program)

# 1.3) Pie chart
pie(table(Program))

# 1.4) Compute percentage for each program
data1 <- table(Program)
data1
pct_data1 <- round(data1 / sum(data1) * 100, 2)
pct_data1
pct_data0 <- paste0(pct_data1, "%")
pct_data0
pct_data1 <- paste(levels(Program), pct_data0)
pct_data1
col <- c("#a93ff4", "#1aef28", "#ef281a", "#4fbbd6")
par(mar = c(4, 4, 4, 4)) # add margin to graphical engine (bottom, left, top, right)
pie(data1, labels = pct_data1, main = "Program Enrolled", col = col)

# pie with legend
png(file = "learn-r/week4/Images/pie0.png", width = 600)
pie(data1, labels = pct_data0, main = "Program Enrolled", col = col)
legend("bottomright", legend = levels(Program), fill = col)


# 3D pie chart
library(plotrix)
pie3D(data1, labels = pct_data1, main = "Program Enrolled", col = col, explode = 0.1)

# barchart
y_range <- c(0, ceiling(max(table(gender)) / 5) * 5)
y_range
par(mfrow = c(1, 2))
barplot(table(gender), col = col[1:2], ylab = "Frequency", xlab = "Gender", ylim = y_range)

x_range <- c(0, ceiling(max(table(Program)) / 5) * 5)
x_range
barplot(table(Program), col = col, xlab = "Frequency", ylab = "Program", xlim = x_range, horiz = T)

# Stack barchart
table1 <- table(gender, Program)

barplot(table1) # basic stack barchart

col <- c("cyan", "pink")

par(mfrow = c(1, 2))

barplot(table1, ylim = c(0, 14), xlab = "Program", ylab = "Frequency", col = col, legend = c("Male", "Female"))

barplot(table1, ylim = c(0, 8), xlab = "Program", ylab = "Frequency", col = col, legend = c("Male", "Female"), beside = T)

par(mfrow = c(1, 1))


# Data Visualization
# 2) Presenting numerical data
# Stem and Leaf
library(MASS)
data(road)
str(road)
attach(road)

stem(temp, scale = 0.5)

# Boxplot *!
str(bmi_data)

par(mfrow = c(1, 2))

boxplot(height, main = "Height", col = "red", horizontal = T)
boxplot(weight, main = "Weight", col = "blue", horizontal = T)

# display boxplot of height according to gender
par(mar = c(10, 10, 10, 10))
boxplot(height ~ gender, main = "Weight", col = c("cyan", "pink"), cex.main = 3, cex.lab = 1.5)

boxplot(height ~ Program, main = "Weight", cex.main = 3, cex.lab = 1.5)