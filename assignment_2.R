# Read data
data <- read.csv("pollutants_22.csv")

shapiro.test(data$PM10)
shapiro.test(data$Ozone)
shapiro.test(data$NO2)