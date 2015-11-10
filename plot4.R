#  get the data
#  programming assignment 2,  r graphing - JH Coursera

library(dplyr)
library(ggplot2)
setwd("c:\\hutton\\r_graph2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
merge1 <- merge(NEI,SCC,by="SCC")
sub_nei <- subset(merge1,
   grepl("coal",merge1$Short.Name,ignore.case = TRUE) )

groupColumns = c("year")
dataColumns = c("Emissions")

res <- ddply(sub_nei,groupColumns, function(x) colSums(x[dataColumns]))

png(file="plot4.png",bg="transparent")
plot (res$year,res$Emissions,type="l", ann=FALSE)
title(xlab="Year",ylab="Total Pollution (tons)",main="Total Pollution Coal")
dev.off()






