a<-mtcars
b<-subset(mtcars, am=="1")
mean(b$hp)          
library(mosaic)

#1
favstats(hp~am, data = mtcars)

#2
attach(mtcars)
plot(qsec~carb)

#3
palette(c("skyblue","firebrick"))

plot(mpg ~ qsec, data=mtcars, col=as.factor(am), pch=16, xlab="Quarter Mile Time (seconds)", ylab="Miles per Gallon", main="1974 Motor Trend Vehicles")
legend("topright", pch=16, legend=c("automatic","manual"), title="Transmission", bty='n', col=palette())
