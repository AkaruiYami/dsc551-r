height <- c(
    175,
    165,
    150,
    155,
    168,
    153,
    165,
    177,
    180,
    164,
    150
)

weight <- c(
    80,
    85,
    50,
    55,
    63,
    45,
    74,
    90,
    86,
    74,
    53
)

hours_sleeping <- c(
    8,
    7,
    12,
    10,
    9,
    7,
    6,
    7,
    8,
    8,
    11
)
height_m <- height / 100
bmi <- round(weight / height_m^2, 2)

df <- data.frame(height, weight, hours_sleeping)
df
cbind(df, bmi)
df2 <- data.frame(df, bmi)

summary(df2)