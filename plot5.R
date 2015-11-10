#  get the data
#  plot5.r - R graphic course - JH Coursera
library(dplyr)
library(ggplot2)
setwd("c:\\hutton\\r_graph2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
merge1 <- merge(NEI,SCC,by="SCC")

sub_nei <- subset(merge1,fips=="24510"  &
   grepl("Highway Veh",merge1$Short.Name,ignore.case = TRUE) )

groupColumns = c("year")
dataColumns = c("Emissions")
res <- ddply(sub_nei,groupColumns, function(x) colSums(x[dataColumns]))

png(file="plot5.png",bg="transparent")
plot ( res$year,res$Emissions,type="l", ann=FALSE)
title(xlab="Year",ylab="Total Tons",main="Total Tonnage - Hwy - Baltimore")
dev.off()



