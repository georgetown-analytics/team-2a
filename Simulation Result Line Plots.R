#Load libraries needed for analysis
library(ggplot2)
library(dplyr)
library(reshape2)

#####Silver Line######
silver <- read.csv("silver_total1.csv")

#Summary statistics
aggregate(end ~ group, data=silver, mean)
aggregate(end ~ group, data=silver, sd)
aggregate(end ~ group, data=silver, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(silver$group), silver$group, silver$start, silver$end)
dfm <- melt(df, id.var = c("id", "silver.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = silver.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Silver Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = silver.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Silver Line Simulation Results") + 
  coord_flip() + facet_wrap(~ silver.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Orange Line######
orange <- read.csv("orange_total1.csv")

#Summary statistics
aggregate(end ~ group, data=orange, mean)
aggregate(end ~ group, data=orange, sd)
aggregate(end ~ group, data=orange, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(orange$group), orange$group, orange$start, orange$end)
dfm <- melt(df, id.var = c("id", "orange.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = orange.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Orange Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = orange.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Orange Line Simulation Results") + 
  coord_flip() + facet_wrap(~ orange.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Blue Line######
blue <- read.csv("blue_total1.csv")

#Summary statistics
aggregate(end ~ group, data=blue, mean)
aggregate(end ~ group, data=blue, sd)
aggregate(end ~ group, data=blue, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(blue$group), blue$group, blue$start, blue$end)
dfm <- melt(df, id.var = c("id", "blue.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = blue.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Blue Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = blue.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Blue Line Simulation Results") + 
  coord_flip() + facet_wrap(~ blue.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Red Line######
red <- read.csv("red_total1.csv")

#Summary statistics
aggregate(end ~ group, data=red, mean)
aggregate(end ~ group, data=red, sd)
aggregate(end ~ group, data=red, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(red$group), red$group, red$start, red$end)
dfm <- melt(df, id.var = c("id", "red.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = red.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Red Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = red.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Red Line Simulation Results") + 
  coord_flip() + facet_wrap(~ red.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Green Line######
green <- read.csv("green_total1.csv")

#Summary statistics
aggregate(end ~ group, data=green, mean)
aggregate(end ~ group, data=green, sd)
aggregate(end ~ group, data=green, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(green$group), green$group, green$start, green$end)
dfm <- melt(df, id.var = c("id", "green.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = green.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Green Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = green.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Green Line Simulation Results") + 
  coord_flip() + facet_wrap(~ green.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####yellow Line######
yellow <- read.csv("yellow_total1.csv")

#Summary statistics
aggregate(end ~ group, data=yellow, mean)
aggregate(end ~ group, data=yellow, sd)
aggregate(end ~ group, data=yellow, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(yellow$group), yellow$group, yellow$start, yellow$end)
dfm <- melt(df, id.var = c("id", "yellow.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = yellow.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Yellow Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = yellow.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Yellow Line Simulation Results") + 
  coord_flip() + facet_wrap(~ yellow.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Additional Red Line Scenarios######
red1 <- read.csv("red_total2.csv")

#Summary statistics
aggregate(end ~ group, data=red1, mean)
aggregate(end ~ group, data=red1, sd)
aggregate(end ~ group, data=red1, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(red1$group), red1$group, red1$start, red1$end)
dfm <- melt(df, id.var = c("id", "red1.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = red1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Red Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = red1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Red Line Simulation Results") + 
  coord_flip() + facet_wrap(~ red1.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Additional Orange Line Scenarios######
orange1 <- read.csv("orange_total2.csv")

#Summary statistics
aggregate(end ~ group, data=orange1, mean)
aggregate(end ~ group, data=orange1, sd)
aggregate(end ~ group, data=orange1, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(orange1$group), orange1$group, orange1$start, orange1$end)
dfm <- melt(df, id.var = c("id", "orange1.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = orange1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Orange Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = orange1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Orange Line Simulation Results") + 
  coord_flip() + facet_wrap(~ orange1.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Additional Silver Line Scenarios######
silver1 <- read.csv("silver_total2.csv")

#Summary statistics
aggregate(end ~ group, data=silver1, mean)
aggregate(end ~ group, data=silver1, sd)
aggregate(end ~ group, data=silver1, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(silver1$group), silver1$group, silver1$start, silver1$end)
dfm <- melt(df, id.var = c("id", "silver1.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = silver1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Silver Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = silver1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Silver Line Simulation Results") + 
  coord_flip() + facet_wrap(~ silver1.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Additional Blue Line Scenarios######
blue1 <- read.csv("blue_total2.csv")

#Summary statistics
aggregate(end ~ group, data=blue1, mean)
aggregate(end ~ group, data=blue1, sd)
aggregate(end ~ group, data=blue1, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(blue1$group), blue1$group, blue1$start, blue1$end)
dfm <- melt(df, id.var = c("id", "blue1.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = blue1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Blue Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = blue1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Blue Line Simulation Results") + 
  coord_flip() + facet_wrap(~ blue1.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Additional Green Line Scenarios######
green1 <- read.csv("green_total3.csv")

#Summary statistics
aggregate(end ~ group, data=green1, mean)
aggregate(end ~ group, data=green1, sd)
aggregate(end ~ group, data=green1, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(green1$group), green1$group, green1$start, green1$end)
dfm <- melt(df, id.var = c("id", "green1.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = green1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Green Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = green1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Green Line Simulation Results") + 
  coord_flip() + facet_wrap(~ green1.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

#####Additional Yellow Line Scenarios######
yellow1 <- read.csv("yellow_total2.csv")

#Summary statistics
aggregate(end ~ group, data=yellow1, mean)
aggregate(end ~ group, data=yellow1, sd)
aggregate(end ~ group, data=yellow1, quantile)

#Use reshape package to melt the data frame for plotting
df <- data.frame(id = seq_along(yellow1$group), yellow1$group, yellow1$start, yellow1$end)
dfm <- melt(df, id.var = c("id", "yellow1.group"))

#Plot overlapping scenarios
ggplot(dfm, aes(variable, value, group = id, colour = yellow1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Yellow Line Simulation Results") + 
  coord_flip() + ylab("Daily Time of Trips") + xlab("Start to Finish") 

#Plot small multiples of scenarios
ggplot(dfm, aes(variable, value, group = id, colour = yellow1.group)) +
  geom_path(alpha = 0.3, size=1) + ggtitle("Additional Yellow Line Simulation Results") + 
  coord_flip() + facet_wrap(~ yellow1.group) + 
  ylab("Daily Time of Trips") + xlab("Start to Finish")

