#  get the data
#  plot3.r
#  2nd assignemnt - graph course - JH Coursera

library(dplyr)
library(ggplot2)
setwd("c:\\hutton\\r_graph2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
merge1 <- merge(NEI,SCC,by="SCC")
sub_nei <- subset(merge1,fips=="24510")
 

groupColumns = c("year","type")
dataColumns = c("Emissions")
res <- ddply(sub_nei,groupColumns, function(x) colSums(x[dataColumns]))

g <- ggplot(res,aes(type,Emissions))
p <- g + geom_point(aes(color = type)) + 
      facet_grid(. ~ year) + 
	labs(x = "Emission Type",y="Total Emission",title="Plot3.r") +
      theme(axis.text.x = element_blank())

png(file="plot3.png",bg="transparent")
print(p)
dev.off()



