# Dotplot: Grouped Sorted and Colored
# Sort by mpg, group and color by cylinder 
x <- mtcars[order(mtcars$mpg),] # sort by mpg
x$cyl <- factor(x$cyl) # it must be a factor
x$color[x$cyl==4] <- "red"
x$color[x$cyl==6] <- "blue"
x$color[x$cyl==8] <- "darkgreen"	
dotchart(x$mpg,labels=row.names(x),cex=.7,groups= x$cyl,
         main="Gas Milage for Car Models\ngrouped by cylinder",
         xlab="Miles Per Gallon", gcolor="black", color=x$color)
stripchart(x$mpg,labels=row.names(x),cex=.7,groups= x$cyl,
         main="Gas Milage for Car Models\ngrouped by cylinder",
         xlab="Miles Per Gallon", gcolor="black", color=x$color)
type <- c(rep("apf",6), rep("af",9))
stripchart(wing[type=="apf"], pch=1, method="stack", main="Wing", xlim=range(wing), col="blue")
stripchart(wing[type=="af"],pch=2,method="stack",add=T, col="red")

FRent<-subset(Rent, Gender=="F")
OFRent<-FRent[order(FRent$Cost),]
str(OFRent)
OFRent$size<-cut(OFRent$Residents, breaks = c(0,22,92,210,999), 
                 labels=c("5 to 22", "23 to 92", "93 to 210","211 to 636"))
table(OFRent$size)
OFRent$color[OFRent$size=="5 to 22"]<-"red"
OFRent$color[OFRent$size=="23 to 92"]<-"blue"
OFRent$color[OFRent$size=="93 to 210"]<-"green"
OFRent$color[OFRent$size=="211 to 636"]<-"black"

rownames(OFRent)<-OFRent$Apartment
dotchart(OFRent$Cost,labels=row.names(OFRent),cex=.7,groups= OFRent$size,
         main="Female Housing Costs \nGrouped by Number of Residents",
         xlab="Cost per Semester", gcolor="black", color=OFRent$color)
library(mosaic)
favstats(OFRent$Residents)
