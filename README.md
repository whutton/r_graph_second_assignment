Plot 1
Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

Yes the totals by year where the following:
  year Emissions
1 1999   7332967
2 2002   5635780
3 2005   5454703
4 2008   3464206

See plot1.png

Plot 2
Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

Yes

For fips of 24510 the yearly total in tons of pollutions was the following:
  year Emissions
1 1999  3274.180
2 2002  2453.916
3 2005  3091.354
4 2008  1862.282

So 2008 was about ½ of the total amount that was produced in 1999

See plot2.png

Plot 3
Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

Overall yes.

The non-road showed a decrease in 02 from 99.  05 was essentially the same as 02 and then a decrease in 08
The nonpoint also showed a similar pattern as non-road (virtually the same pattern)
The on-point show the same behavior but the drop off in 08 from 05 was smaller.
The point showed an increase in 02 and 05.  The 08 level was comparable with the 99 level.
See plot3.png

Plot 4
Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
Yes.
Year 2002 was a decrease from 99.  There was a slight uptick in usage in 05 from 02 (still under 99).  08 showed a significant decrease from the previous years.
See plot4.png

Plot 5
How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

Yes
This analysis look for any emissions from “Motor Veh”.  This grouping seemed to cover all of the appropriate sources.   If you look at the total by observation year:
  year Emissions
1 1999 346.82000
2 2002 134.30882
3 2005 130.43038
4 2008  88.27546
So the 2008 level was significantly lower than the 199 level (about ¼)
See plot5.png

Plot 6

Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

Los Angeles
If you look at LA.  In 2002 and 2005 there was an increase in emissions compared to 1999.   2008 saw a return to levels slightly above the 1999 level
Baltimore
Baltimore saw a slight decrease in 2002 from 1999.  05 was essentially the same as 02 and 08 slightly lower value, so there has been a gradual downward levelling of emissions)
See plot6.png

