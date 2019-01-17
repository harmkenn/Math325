stripchart(cars$dist, pch=16, method="stack")
abline(v=100, lty=2)
max(cars$dist)
qqPlot(cars$dist)
wilcox.test(cars$dist, mu = 100, alternative = "two.sided")

with(subset(Duncan, type=="wc"), qqPlot(prestige))
with(subset(Duncan, type=="prof"), qqPlot(prestige))

View(Duncan)

pander(wilcox.test(prestige~type , data = subset(Duncan , type  %in% c("prof","wc")), mu = 0, alternative = "greater", conf.level = 0.95))

boxplot(salary ~ sex, data=subset(Salaries, rank=="Prof"))

favstats(salary ~ sex, data=subset(Salaries, rank=="Prof"))

View(Salaries)

pander(wilcox.test(salary~sex , data = subset(Salaries , rank  %in% c("Prof")), mu = 0, alternative = "two.sided", conf.level = 0.95))


View(Davis)

boxplot(Davis$weight,Davis$repwt, names=c("Weight","Reported"))

stripchart(Davis$weight-Davis$repwt, method="stack", pch=16, ylim=c(1,3))

pander(wilcox.test(Davis$weight-Davis$repwt ,  mu = 0, alternative = "two.sided", conf.level = 0.95))
