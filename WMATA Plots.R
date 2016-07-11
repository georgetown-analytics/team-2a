library(ggplot2)

#sample Line Ideal State
sample <- read.csv("sample_line.csv")
str(sample)
head(sample)

t1spag = ggplot(sample, aes(x=Station, y=Time)) + 
  geom_line() + ggtitle("Normal Trip vs. SafeTrack Trip") + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,
                                20,21,22,23,24,25,26,27), 
                     labels = c("Spring Hill","Greensboro","Tysons Corner", "Mclean",
                                "E. Falls Church","Ballston","VA Square","Clarendon",
                                "Court House","Rossyln","Foggy Bottom","Farragut West",
                                "McPherson Square","Metro Center","Federal Triangle",
                                "Smithsonian","LeFant Plaza","Federal Center",
                                "Capitol South","Eastern Market","Potomac Ave",
                                "Stadium Armory","Benning Road","Capitol Heights",
                                "Addison Road","Morgan Blvd","Largo Town Center")) +
  theme(axis.text.x  = element_text(angle=90,vjust=0.5, size=10))
sample_spag = t1spag + aes(colour = factor(Train))
sample_spag

t2spag = ggplot(sample, aes(x=Station, y=Cumulative_Time)) + 
  geom_line() + ggtitle("Normal Trip vs. SafeTrack Trip") + 
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,
                                20,21,22,23,24,25,26,27), 
                     labels = c("Spring Hill","Greensboro","Tysons Corner", "Mclean",
                                "E. Falls Church","Ballston","VA Square","Clarendon",
                                "Court House","Rossyln","Foggy Bottom","Farragut West",
                                "McPherson Square","Metro Center","Federal Triangle",
                                "Smithsonian","LeFant Plaza","Federal Center",
                                "Capitol South","Eastern Market","Potomac Ave",
                                "Stadium Armory","Benning Road","Capitol Heights",
                                "Addison Road","Morgan Blvd","Largo Town Center")) +
  theme(axis.text.x  = element_text(angle=90,vjust=0.5, size=10))
sample_spag2 = t2spag + aes(colour = factor(Train))
sample_spag2

################################













