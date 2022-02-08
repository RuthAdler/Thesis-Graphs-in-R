#DIP ALPHA TRANSHETEROZYGOESE 
setwd("~/Desktop/Lab work")
trans=read.csv("TRANS.csv")
var.test(class~gene,data=trans,center=mean)
shapiro.test(trans$class[1:18])
shapiro.test(trans$class[19:39])
t.test(class~gene,data=trans, var.equal=TRUE)

wilcox.test(class~gene,data=trans,conf.level = 0.95)
