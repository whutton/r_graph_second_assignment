#  get the data
#  file plot2.r   2nd assignment graph JH Coursera
#
library(dplyr)
setwd("c:\\hutton\\r_graph2")

NEI <- readRDS("summarySCC_PM25.rds")
sub_nei <- subset(NEI,fips=="24510")
SCC <- readRDS("Source_Classification_Code.rds")
sub1 <- aggregate(Emissions ~ year, data=sub_nei,sum)
g_range <- c(min(sub1$Emissions),max(sub1$Emissions))
png(file="plot2.png", bg="transparent")
plot (sub1$year,sub1$Emissions,type="l",
	ann=FALSE )

axis(1,las=1,labels=T)
title(xlab="2.5 Polluntant by year (fips=24510)")
title(ylab="Summary of PM25-PRI")
dev.off()




