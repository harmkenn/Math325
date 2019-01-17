library(mosaic)
library(DT) 
library(knitr)
library(pander)
library(car)
library(ggplot2)



### Speed Quiz Week 1

#Q1 Use the Orange dataset in R to compute the average circumference of orange trees that are 1,004 days old.

View(Orange)
mean(circumference~age, data = subset(Orange, age == 1004))

#Q2 Use the Utilities dataset in R, which records monthly utility costs and details for a certain residence, to create an appropriate graphic of monthly gas bill costs.
#Be sure library(mosaic) is loaded.
#Based on what you find in your graphic, which statistic would be most meaningful for describing the typical cost of the monthly gas bill for this residence?

View(Utilities)
favstats(Utilities$gasbill)
hist(Utilities$gasbill)
boxplot(Utilities$gasbill)

#Q3 Use the Orange dataset in R to create an appropriate graphic that shows the growth in circumference of orange trees as they age. For which of the following ages of a tree would a circumference of 100mm be most unlikely to occur?

plot(age~circumference, data=Orange)
abline(lm(Orange$age~Orange$circumference))

### Speed Quiz Week 2

#1 Use the mtcars dataset in R to compute the mean "Gross horsepower" of both automatic and manual transmission 1974 Motor Trend vehicles.

View(mtcars)
?mtcars
pander(mean(hp~am, data = mtcars))

#2 Use the mtcars dataset in R to make a graph that allows you to see how the quarter mile time (qsec) of 1974 Motor Trend vehicles is effected by the number of carburetors (carb) in the vehicle.
# Select the statement below that correctly describes this relationship.

plot(qsec~carb, data = mtcars)

#3 Run the following codes in R. Then select the statement that most appropriately interprets the resulting graph.
palette(c("skyblue","firebrick"))
plot(mpg ~ qsec, data=mtcars, col=as.factor(am), pch=16, xlab="Quarter Mile Time (seconds)", ylab="Miles per Gallon", main="1974 Motor Trend Vehicles")
legend("topright", pch=16, legend=c("automatic","manual"), title="Transmission", bty='n', col=palette())

### Speed Quiz Week 3

#1 Ensure you have library(mosaic) loaded in RStudio and can View(Births78). This dataset records data for every day of the year. In other words, each row of this dataset repesents a day of the year.
# In a typical year, there are 52 weeks. However, 52 x 7 = 364, and as most of us know, there are 365 days in a year. This means that every year, at least one day gets to happen more than 52 times.
# Use appropriate R commands and the Births78 dataset to determine which day of the week in 1978 occurred 53 times.

View(Births78)
table(Births78$wday)

#2 Use the Births78 dataset in RStudio to test the following hypotheses.
#H0:μWednesday−μThursday=0
#Ha:μWednesday−μThursday≠0
#Select the p-value of the test from the options below.

pander(t.test(births~wday, data = subset(Births78, wday %in% c("Wed","Thurs")), mu = 0, alternative = "two.sided", conf.level = 0.95))

#3 What two things are required to compute a p-value?

# A test statistic and a sampling distribution of the test statistic.

### Speed Quiz Week 4

#1 Use the Salaries dataset in R to find the number of male and female assistant professors in the dataset.

View(Salaries)
?Salaries
str(Salaries)
table(Salaries$rank, Salaries$sex)

#2 Create an appropriate graphic using the Salaries dataset in R that would allow you to compare the distribution of salaries for faculty in discipline A ("theoretical") and discipline B ("applied") departments.

boxplot(salary ~ discipline, data=Salaries, ylab="Salaries", xlab="Discipline", main="Faculty From U.S. Colleges")

#3 Perform an appropriate Wilcoxon Test of the following hypotheses using the Salaries dataset in R.
# H0:median discipline A salaries−median discipline B salaries=0
# Ha:median difference of salaries≠0
# Select the response below showing the correct test statistic, p-value, and conclusion of the test.

wilcox.test(salary ~ discipline, data=Salaries)






