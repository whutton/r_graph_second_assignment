#  get the data
#  plot6.r
#  2nd programming assignment, r graphing JH Coursera
library(dplyr)
library(ggplot2)
setwd("c:\\hutton\\r_graph2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
merge1 <- merge(NEI,SCC,by="SCC")

sub_nei <- subset(merge1,(fips=="24510" | fips=="06037")  &
   grepl("Highway Veh",merge1$Short.Name,ignore.case = TRUE) )

sub_nei$fips <- factor(sub_nei$fips,
  levels = c("24510","06037"),
  labels = c("Baltimore","Los Angeles") )

groupColumns = c("year","fips")
dataColumns = c("Emissions")
res <- ddply(sub_nei,groupColumns, function(x) colSums(x[dataColumns]))


g <- ggplot(res,aes(year,Emissions)) +
     geom_smooth(method = "lm",se = FALSE) +
     geom_point(aes(color = fips)) 

png(file="plot6.png", bg = "transparent")
print(p)
dev.off()



