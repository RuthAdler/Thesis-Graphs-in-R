#DIP DELTA TIFR homosOESE 
setwd("~/Desktop/Lab work/Graph in R")
TIFR=read.csv("tifr.csv")
var.test(class~genotype,data=TIFR,center=mean)
shapiro.test(TIFR$class[1:17])
shapiro.test(TIFR$class[18:34])
t.test(class~genotype,data=TIFR, var.equal=TRUE)

wilcox.test(class~genotype,data=TIFR,conf.level = 0.95)
