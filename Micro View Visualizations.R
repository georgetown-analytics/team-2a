#Read in CSV file
metro <- read.csv("micro_view_final.csv")

#Plot 1
ggplot(metro, aes(x=Station, y=Cumulative_Time)) + 
  geom_line() + coord_flip() + aes(colour = factor(Train)) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7), labels = c("Ballston", 
  "VA Square", "Clarendon", "Courthouse", "Rosslyn", "Foggy Bottom",
  "Farragut West")) + xlab("Station") + ylab("Cumulative Trip Time
  by Train") + ggtitle("Simulated Train Trips")

#Plot 2
ggplot(metro, aes(x=Station, y=Scaled_Cumulative)) + geom_line() +
aes(colour = factor(Train)) + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7), labels = c("Ballston", 
  "VA Square", "Clarendon", "Courthouse", "Rosslyn", "Foggy Bottom",
  "Farragut West")) + xlab("Station") + ylab("Cumulative Trip Time 
  by Train") + ggtitle("Simulated Train Trips") +
  theme(axis.text.x  = element_text(angle=90,vjust=0.5, size=10))

#Plot 3
ggplot(metro, aes(x=Station, y=Scaled_Cumulative)) + geom_line() +
  facet_wrap(~Train) + aes(colour = factor(Train)) + 
  scale_x_continuous(breaks = c()) + xlab("Station") + 
  ylab("Cumulative Trip Time") + ggtitle("Cumulative Trip Time") +
  theme(axis.text.x  = element_text(angle=90,vjust=0.5, size=10))

#Plot 4
ggplot(metro, aes(x = Station)) + 
  geom_line(aes(y = Scaled_Cumulative), colour="blue") + 
  geom_line(aes(y = Cumulative_Forecast), colour = "grey") +
  facet_wrap(~Train) + 
  scale_x_continuous(breaks = c()) + xlab("Station") + 
  ylab("Cumulative Trip Time") + ggtitle("Cumulative Trip Time vs. Forecast") +
  theme(axis.text.x  = element_text(angle=90,vjust=0.5, size=10))








