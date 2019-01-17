View(KidsFeet)
?KidsFeet
table(KidsFeet$sex)
table(KidsFeet$biggerfoot)
table(KidsFeet$birthmonth)
table(KidsFeet$domhand,KidsFeet$sex)

favstats(length~sex, data = KidsFeet)

View(airquality)

favstats(Temp~Month, data = airquality)

mean(Temp~Month, data = airquality)

library(mosaicData)
View(Riders)
?Riders
sum(riders~day, data = Riders)

View(mtcars)
?mtcars

table(mtcars$cyl)
mtcars4<-subset(mtcars, cyl=="4")
mean(mpg~am, data=mtcars4)

mtcars8<-subset(mtcars, cyl=="8")
mean(qsec~am, data=mtcars8)

mtcars6a<-subset(mtcars, cyl=="6" & am=="0")
favstats(mtcars6a$wt)

mtcars6m<-subset(mtcars, cyl=="6" & am=="1")
max(mtcars6m$wt)
max(mtcars6a$wt)-max(mtcars6m$wt)
