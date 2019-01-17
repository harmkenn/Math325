library(pander)

curve(dnorm(x,21,5), from=1, to=41)
mysample<- rnorm(60,21,5)
points(mysample, rep(0,60), pch=16)
points(mean(mysample),0,pch=3,col="firebrick")

Mdata<-c(33.209,31.541,14.478,25.658,38.882,30.628)
pander(t.test(Mdata, mu = 21, alternative = "two.sided", conf.level = 0.95))

