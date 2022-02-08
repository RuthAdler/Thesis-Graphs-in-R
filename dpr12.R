#dpr12 oe different forms
setwd("~/Desktop/Thesis/FIG 9-Dpr12 c'")
dpr12=read.csv("dpr12 stat.csv")
#for dpr cd8
shapiro.test(dpr12$class[1:29])
#for dpr12  delta ct
shapiro.test(dpr12$class[30:52])
#for dpr12 -/-
shapiro.test(dpr12$class[53:83])
#for dpr12 full legth
shapiro.test(dpr12$class[84:134])
#for dpr12 full legth ha at c
shapiro.test(dpr12$class[135:144])

kruskal.test(class ~ genotype, data = dpr12)
attach(dpr12)
test=pairwise.wilcox.test(class, genotype, p.adj="bonf") 

test
detach(all)


