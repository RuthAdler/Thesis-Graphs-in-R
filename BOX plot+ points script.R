##ruth graph#
library(ggplot2)
setwd("~/Desktop/Lab work/aResults/Graph in R")
ruth <- read.csv("dpr12try2.csv")

#the way to determain the order of the samples
ruth$genotype<- factor(ruth$genotype, levels = c("DPR12Full", "DPR12CD8", "DPR12dCT" , "DPR12mutant"))
#boxplot=ggplot#theme_minimal=backround color bihaind the groff#geome gitter is the dots, legend.position="bottom"
ruthplot = ggplot(ruth, aes(x =  genotype, y = class, fill = genotype, height=0.7, width=0.18)) +
  geom_boxplot() + ylim(0.8,4.5)+theme_minimal()+ geom_jitter(width=0.25, alpha=0.5) + theme(legend.position="bottom")
ruthplot

#save as pdf
ggsave("boxpointsdpr12
       .pdf")
