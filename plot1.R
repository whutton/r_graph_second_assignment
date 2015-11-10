#  get the data
#  plot1.R (2nd assignment graphing JH coursera)
library(dplyr)
setwd("c:\\hutton\\r_graph2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
sub1 <- aggregate(Emissions ~ year, data=NEI,sum)
g_range <- c(min(sub1$Emissions),max(sub1$Emissions))
png(file="plot1.png", bg="transparent")
plot (sub1$year,sub1$Emissions,type="l",
	ann=FALSE )

axis(1,las=1,labels=T)
title(xlab="2.5 Polluntant by year")
title(ylab="Summary of PM25-PRI")
dev.off()


