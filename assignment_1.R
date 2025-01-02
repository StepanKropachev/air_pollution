# Read the data
data <- read.csv("pollutants_22.csv")

# boxplots location
par(mfrow=c(1,3))
boxplot(PM10 ~ center, data=data, main="PM10 by Location")
boxplot(Ozone ~ center, data=data, main="Ozone by Location")
boxplot(NO2 ~ center, data=data, main="NO2 by Location")

# boxplots year
par(mfrow=c(1,3))
boxplot(PM10 ~ year, data=data, main="PM10 by Year")
boxplot(Ozone ~ year, data=data, main="Ozone by Year")
boxplot(NO2 ~ year, data=data, main="NO2 by Year")

# confidence intervals location
t.test(PM10 ~ center, data=data)$conf.int
t.test(Ozone ~ center, data=data)$conf.int
t.test(NO2 ~ center, data=data)$conf.int

# confidence intervals year
t.test(PM10 ~ year, data=data)$conf.int
t.test(Ozone ~ year, data=data)$conf.int
t.test(NO2 ~ year, data=data)$conf.int

