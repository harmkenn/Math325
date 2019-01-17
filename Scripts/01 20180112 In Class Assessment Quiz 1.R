#Q1

View(Orange)
Orange1004 <- subset(Orange, age=="1004")
View(Orange1004)

library(mosaic)
favstats(Orange1004$circumference)

#Q2

View(Utilities)
favstats(Utilities$gasbill)
hist(Utilities$gasbill)

#Q3

plot(age~circumference, data=Orange)
abline(lm(Orange$age~Orange$circumference))
