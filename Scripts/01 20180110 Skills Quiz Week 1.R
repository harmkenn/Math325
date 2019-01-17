?airquality
View(airquality)

#mean(Wind~Month, data=airquality)
mean(airquality$Wind)
sd(airquality$Wind)
summary(airquality$Wind)

plot(Wind~Temp, data = airquality, xlab="Daily Average Temperature", ylab="Daily Average Wind Speed", col="gray", pch=19)
title("La Guardia Airport", line=2)
title("Warmer Weather Shows Less Wind", line=1)

hist(airquality$Solar.R, xlab="Daily Mean Radiation in Langleys (from 0800 to 1200 hours)", col="orange", main="")
title("Central Park, NYC", line=2)
title("Daily Average Radiation", line=1)

boxplot(Solar.R~Month, data=airquality, xlab="Month of the Year", ylab="Radiation in Langleys (Averaged from 0800 to 1200 hours)", 
        col=c("gray","gray","orangered","gray","gray"), main="")
title("Central Park, NYC", line=2)
title("Daily Mean Radiation High in July", line=1)
