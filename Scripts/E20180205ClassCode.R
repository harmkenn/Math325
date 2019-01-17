library(mosaic)
library(DT) 
library(knitr)
library(pander)
library(car)
library(plyr)
library(dplyr)

str(airquality)

?warpbreaks
warpbreaks
str(warpbreaks)

airquality$Season<-mapvalues(airquality$Month,5:9,c("Spr",rep("Sum",3),"Fall"))


#Anova Day 2

Blackmore<-Blackmore
?Blackmore

Blackmore$ageGroup <- cut(Blackmore$age, c(7,10,12,14,18), labels=c("Youth","Pre-Teen","Early-Teen","Late-Teen"))

table(Blackmore$ageGroup)

pander(aov(exercise ~ group + ageGroup + group:ageGroup, data=Blackmore), caption = "Cool stuff")

mplot(Blackmore)

library(car) 
friendly.aov <- aov(correct ~ condition, data=Friendly)
summary(friendly.aov)

par(mfrow=c(1,2))

plot(friendly.aov, which=1:2)
pander(aov(correct ~ condition, data=Friendly))

xyplot(correct~condition, data = Friendly)
mplot(Friendly)

ggplot(data = Friendly, aes(x = condition, y = correct)) + geom_boxplot()  + labs(title = "")

?ToothGrowth

ToothGrowth$dose <- as.factor(ToothGrowth$dose)

pander(summary(aov(len ~ supp + dose + dose:supp, data=ToothGrowth)))
summary(aov(len ~ supp + dose + dose:supp, data=ToothGrowth))
xyplot(len ~supp, data=ToothGrowth,type=c("p","a"))

View(KidsFeet)
mean(length~domhand, data = subset(KidsFeet, sex="B"))

mean(length ~ sex, data=KidsFeet, groups=domhand)

     