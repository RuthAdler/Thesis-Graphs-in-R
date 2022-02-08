#DIP DELTA 44e04 homosOESE 
setwd("~/Desktop/Thesis/FIG 5 44e04")
r44=read.csv("44r.csv")
var.test(rank~gene,data=r44,center=mean)
shapiro.test(r44$rank[1:14])
shapiro.test(r44$rank[15:30])
t.test(rank~gene,data=r44, var.equal=TRUE)

wilcox.test(rank~gene,data=r44,conf.level = 0.95)
