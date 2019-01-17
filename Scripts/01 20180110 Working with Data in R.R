View(airquality)
hist(airquality$Temp)
hist(airquality$Temp, col="firebrick")
hist(airquality$Wind, col="firebrick")
hist(airquality$Wind, col="firebrick", xlab='Daily Average Wind Speed (MPH)')
hist(airquality$Wind, col="firebrick", xlab="Daily Average Wind Speed (MPH)", main="La Guardia Airport")

boxplot(Wind~Month, data=airquality)
boxplot(Wind~Month, data=airquality, xlab="Moth of the Year", ylab="Daily Average Wind Speed (mph)", 
        col="steelblue",main="La Guardia Airport" )
#blee
#install.packages("mosaic")
library(mosaic)

mean(Wind~Month, data=airquality)
table(airquality$Wind)

cor(airquality$Wind, airquality$Month)
cor(Wind~Month, data=airquality)

JJ <-- subset(airquality, Month %in% c(6,7))
View(JJ)

#Filters the dataset to just months 6 and 7

