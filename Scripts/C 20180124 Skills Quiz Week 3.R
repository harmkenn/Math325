curve(dnorm(x,-5,2), -12, 20, col="skyblue", lwd=2, ylab="", n=1000, ylim=c(0,.81))
curve(dchisq(x,5), from=0, add=TRUE, col="firebrick", lwd=2, n=1000)
curve(dt(x,5), add=TRUE, col="skyblue4", lwd=2, n=1000)
curve(df(x,10,10), from=0, add=TRUE, col="salmon", lwd=2, n=1000)
legend("topright", legend=c("Normal(-5,2)","Chi-squared(8)","t(5)","f(2,5)"), lwd=2, lty=1, col=c("skyblue","firebrick","skyblue4","salmon"), bty='n')


curve(dnorm(x, -5, 2), from=-12, to=2, lwd=2, col="skyblue", ylab="Normal Distribution with Mean of -5 and Standard Deviation of 2")

abline(h=0, v=-5, lty=2)

ChilledCO2<-CO2
CO2.chilled.250 <- subset(CO2, Treatment == "chilled" & conc == 250)
favstats(uptake~Type, data=CO2.chilled.250)

CO2.chilled.250.Q<-subset(CO2, Treatment == "chilled" & conc == 250 & Type == "Quebec")
CO2.chilled.250.M<-subset(CO2, Treatment == "chilled" & conc == 250 & Type == "Mississippi")

t.test(CO2.chilled.250.Q$uptake, CO2.chilled.250.M$uptake, mu = 0, alternative = "two.sided", conf.level = 0.95)


library(car)

Miss <- subset(CO2, Treatment == "chilled" & conc == 250 & Type == "Mississippi")
Queb <- subset(CO2, Treatment == "chilled" & conc == 250 & Type == "Quebec")
t.test(Miss$uptake, Queb$uptake, mu = 0, alternative = "two.sided", conf.level = 0.95)

par(mfrow=c(1,2))

qqPlot(Miss$uptake)

qqPlot(Queb$uptake)
