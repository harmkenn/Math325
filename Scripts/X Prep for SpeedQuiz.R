library(mosaic)
library(DT) 
library(knitr)
library(pander)
library(car)
library(ggplot2)

View(Births78)
# Subset
W<-subset(Births78, wday == "Wed")
T<-subset(Births78, wday == "Thurs")
# Statistics
pander(favstats(births~wday, data = Births78))
#Graph
hist(Births78$births)
plot(age~circumference, data=Orange)
abline(lm(Orange$age~Orange$circumference))
#Tests
pander(t.test(W$births,T$births, mu = 0, alternative = "two.sided", conf.level = 0.95))

pander(t.test(births~wday, data = subset(Births78, wday %in% c("Wed","Thurs")), mu = 0, alternative = "two.sided", conf.level = 0.95))

pander(wilcox.test(births~wday, data = Births78, subset = wday %in% c("Wed", "Thurs")))

pander(wilcox.test(births~wday, data = subset(Births78, wday %in% c("Wed","Thurs")), mu = 0, alternative = "two.sided", conf.level = 0.95))

accidents2015 <- read.csv("./Data/accident.csv", header=TRUE, stringsAsFactors = FALSE)
View(accidents2015)
mplot(accidents2015)
