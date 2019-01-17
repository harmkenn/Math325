library(mosaic)
library(DT) 
library(knitr)
library(pander)
library(car)

View(Births78)

W<-subset(Births78, wday == "Wed")
T<-subset(Births78, wday == "Thurs")

pander(t.test(W$births,T$births, mu = 0, alternative = "two.sided", conf.level = 0.95))

pander(t.test(Births78$births[wday=="Wed",],T$births, mu = 0, alternative = "two.sided", conf.level = 0.95))
