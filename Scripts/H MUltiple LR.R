
boxplot(length~sex,data=KidsFeet)
lmFeet <- lm(length ~ width + sex + width:sex, data=KidsFeet)
lmFeet$coefficients
b<-lmFeet$coefficients
plot(length~width,data=KidsFeet, col=sex, xlim=c(0,10), ylim=c(0,30))
abline(b[1], b[2], col="black")
abline(b[1]+ b[3],b[2]+ b[4], col="red")
