# This is note for the week 3!
# Topic 3: Data management

# How to import data
# 1. To list all available data in R
# data(package = .packages(all.available = TRUE))

# 2. List out only dataset from package MASS
# data(package = "MASS")


# 3. Read / Import datasets
library("MASS")
data(road)
names(road)

head(road, 10)
tail(road, 10)

attach(road)
deaths
detach(road)
deaths

# Read .csv
corn_data <- read.csv(file.choose())
str(corn_data)

# Read .txt
mass_data <- read.table("learn-r/SAMPLE DATA/Mass.txt", header = TRUE)
str(mass_data)

# Read .spss
library(foreign)
bmi_data <- read.spss("learn-r/SAMPLE DATA/BMI.sav", to.data.frame = TRUE)
str(bmi_data)
bmi_data[1:10, ]

# display only male student
male_bmi <- subset(bmi_data, gender == "male")
male_bmi

# display only male from Computers program
male_comp_bmi <- subset(bmi_data, gender == "male" & Program == "Computers")
male_comp_bmi

# delete data / variable
bmi_data[1:3]
bmi_data[-1]
bmi_data[c(1, 4)]

bmi_data[1:5, 1:2] # read 5 rows from 2 columns

# Check on missing value
is.na(bmi_data)
summary(bmi_data)

miss_data <- read.spss("learn-r/SAMPLE DATA/miss.sav", to.data.frame = TRUE)
str(miss_data)

is.na(miss_data)
summary(miss_data)

# find which row has missign value
which(is.na(miss_data$height))
which(is.na(miss_data$weight))

# to remove missing value
miss_data <- na.omit(miss_data)
is.na(miss_data)

# 4. Data Conversion
x <- 1:24
x

is.integer(x)
is.numeric(x)
is.character(x)
is.vector(x)
is.factor(x)

# vector to matrix
matr_x <- matrix(x, nrow = 6)
matr_x

# matrix to data frame
data_x <- as.data.frame(matr_x)
data_x

# data frame to vector
ori_x <- as.matrix(data_x)
ori_x <- as.vector(ori_x)
ori_x

# 5. Export data from R to external sources
# Write dataset to new file
Name <- c("Akarui", "Yami", "Kuro", "Aya")
Gender <- factor(c("Male", "Male", "Male", "Female"))
Age <- c(23, 23, 20, 26)

new_df <- data.frame(Name, Gender, Age)
str(new_df)
new_df

# save into .csv
write.csv(new_df, "learn-r/SAVED DATA/new_df01.csv", row.names = FALSE)

# save to .txt
write.table(new_df, "learn-r/SAVED DATA/new_df01.txt", sep = ";")

# save to .sav
library(haven)
write_sav(new_df, "learn-r/SAVED DATA/new_df01.sav")
# Apply family function

# apply()
# tapply() apply function according to factor levels
# sapply() for vector data structure. output is a vector
# lapply() for list data structure. output is a list

attach(bmi_data)

# Average weight grouped by gender
round(tapply(weight, gender, mean), 2)

# SORT / RANK / ORDER function
s <- c(10, 16, 6, 20, 18)
sort(s)
sort(s, decreasing = TRUE)
rev(sort(s))
order(s) # sort element and return the element's position in unsorted vector
rank(s) # return the element's position in sorted vector