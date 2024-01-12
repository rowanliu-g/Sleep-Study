# How might physical activity affect stress and sleep duration?
getwd()
setwd("/Users/17739/Sleep-Study")

library(viridis)
library(ggplot2)
library(gridExtra)

#### DATA ####
sleep <- read.csv('C:/Users/17739/Sleep-Study/Sleep_health_and_lifestyle_dataset.csv')
class(sleep)
dim(sleep)
head(sleep) 

#### PLOT ####
phys <- sleep[,c(7)]
dur <- sleep[,c(5)]
occup <- sleep[,c(4)]

plt4 <- ggplot(data = sleep) + 
  geom_point(mapping = aes(x= phys, y=dur, color= occup)) +
  scale_color_viridis(discrete = TRUE, option = "turbo") +
  labs(title = "Sleep and Exercise based on Occupation", x = "Physical Activity (min)",
       y = "Sleep Duration (hr)", color = "Occupation")

plt4

