#DIP DELTA 58E02 homosOESE 
setwd("~/Desktop/Lab work/Graph in R")
R58E02=read.csv("58E02.csv")
var.test(class~genotype,data=R58E02,center=mean)
shapiro.test(R58E02$class[1:11])
shapiro.test(R58E02$class[12:29])
t.test(class~genotype,data=R58E02, var.equal=TRUE)

wilcox.test(class~genotype,data=R58E02,conf.level = 0.95)
