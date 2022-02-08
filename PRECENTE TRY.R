# Create data

setwd("~/Desktop/Lab work/aResults/Graph in R")
data <- read.csv("dpr12try2.csv")
#the way to determain the order of the samples
data$genotype<- factor(data$genotype, levels = c("DPR12Full", "DPR12CD8", "DPR12dCT" , "DPR12mutant"))
# create color palette:
library(RColorBrewer)
coul <- brewer.pal(3, "Pastel2") 


# Transform this data in %
data_percentage <- apply(data, 2, function(x){x*100/sum(x,na.rm=T)})

# Get the stacked barplot
barplot(data, 
        col=colors()[c(23,89,12)] , 
        border="white", 
        space=0.04, 
        font.axis=2, 
        xlab="group")

# Make a stacked barplot--> it will be in %!
barplot(data_percentage, col=coul , border="white", xlab="group")
