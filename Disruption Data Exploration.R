#Read in and explore data without outliers
disruption <- read.csv ("disruptions2.csv")
#test <- aggregate(Delay ~ Line + Date, data=disruption, length)

#Explore the data
library(ggplot2)
ggplot(disruption, aes(Delay)) +
  geom_density()

ggplot(disruption, aes(Delay, colour = Line)) +
  geom_density() +
  xlim(0, 25)

require(lattice)
histogram(~Delay | Line, data=disruption)

#Read in data with outliers and split into fifths
disruption_full <- read.csv("disruptions.csv")
disruption_full <- na.omit(disruption_full)
disruption_full$Delay <- as.numeric(as.integer(disruption_full$Delay))

library(data.table)
setDT(disruption_full)
disruption_full[,tiers:=cut(Delay,
                                 breaks=quantile(Delay,probs=seq(0,1,by=1/5)),
                                 labels=1:5,right=F)]
head(disruption_full) 
summary(disruption_full)

#Create a dataframe for each line
red <- subset(disruption_full, Line=="Red")
silver <- subset(disruption_full, Line=="Silver")
yellow <- subset(disruption_full, Line=="Yellow")
blue <- subset(disruption_full, Line=="Blue")
green <- subset(disruption_full, Line=="Green")
orange <- subset(disruption_full, Line=="Orange")

#Come up with means, standard deviations, and counts for each tier
#Then, find an average number of incidents per day to base a probability on
#There are 1,524 days of records

#Red Line
aggregate(Delay ~ tiers, data=red, mean)
aggregate(Delay ~ tiers, data=red, sd)
red_count <- aggregate(Delay ~ tiers, data=red, length)
print(red_count)
red_count[, -1]/1524

#Silver Line
aggregate(Delay ~ tiers, data=silver, mean)
aggregate(Delay ~ tiers, data=silver, sd)
silver_count <- aggregate(Delay ~ tiers, data=silver, length)
print(silver_count)
silver_count[, -1]/1524

#Yellow Line
aggregate(Delay ~ tiers, data=yellow, mean)
aggregate(Delay ~ tiers, data=yellow, sd)
yellow_count <- aggregate(Delay ~ tiers, data=yellow, length)
print(yellow_count)
yellow_count[, -1]/1524

#Blue Line
aggregate(Delay ~ tiers, data=blue, mean)
aggregate(Delay ~ tiers, data=blue, sd)
blue_count <- aggregate(Delay ~ tiers, data=blue, length)
print(blue_count)
blue_count[, -1]/1524

#Green Line
aggregate(Delay ~ tiers, data=green, mean)
aggregate(Delay ~ tiers, data=green, sd)
green_count <- aggregate(Delay ~ tiers, data=green, length)
print(green_count)
green_count[, -1]/1524

#Orange Line
aggregate(Delay ~ tiers, data=orange, mean)
aggregate(Delay ~ tiers, data=orange, sd)
orange_count <- aggregate(Delay ~ tiers, data=orange, length)
print(orange_count)
orange_count[, -1]/1524




