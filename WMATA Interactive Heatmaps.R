library(heatmaply)

##########################
wmata <- read.csv("wmata_stations.csv")
heatmaply(wmata[,-1], k_row = 3, k_col = 2)

#########################

##########################
wmata1 <- read.csv("wmata_final.csv")
head(wmata1)

heatmaply(wmata1[-1], k_row = 3, k_col = 2, labRow = wmata1$Station, Colv = FALSE, scale_fill_gradient_fun = scale_colour_gradient()) %>% layout(margin = list(l = 140, b = 50))
