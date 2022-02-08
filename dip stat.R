#DIP delta oe different forms
setwd("~/Desktop/Thesis/FIG 8-DIP delta c'")
dip=read.csv("DIP STAT.csv")
#for dip cd8
shapiro.test(dip$class[1:49])
#for dip  delta ct
shapiro.test(dip$class[50:63])
#for dip -/-
shapiro.test(dip$class[64:140])
#for dip full legth
shapiro.test(dip$class[141:197])
#for dip full legth ha at n
shapiro.test(dip$class[198:234])

kruskal.test(class ~ genotype, data = dip)
attach(dip)
test=pairwise.wilcox.test(class, genotype, p.adj="bonf") 

test
detach(all)


