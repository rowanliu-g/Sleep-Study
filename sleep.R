# How might physical activity affect stress and sleep duration?
getwd()
setwd("/Users/17739/Sleep-Study")

install.packages("tidyverse")

library(tidyverse)
library(viridis)
library(ggplot2)
library(gridExtra)

#### DATA ####
sleep <- read.csv('C:/Users/17739/Sleep-Study/Sleep_health_and_lifestyle_dataset.csv')
class(sleep)
dim(sleep)
head(sleep) 

sleep #tibble: type of dataframe for tidyverse
View(sleep)
##print(sleep, width = Inf)
glimpse(sleep)

#### PLOT ####
phys <- sleep[,c(7)]
dur <- sleep[,c(5)]
occup <- sleep[,c(4)]

plt1 <- ggplot(data = sleep) + 
  geom_point(mapping = aes(x= phys, y=dur, color= occup)) +
  scale_color_viridis(discrete = TRUE, option = "turbo") +
  labs(title = "Sleep and Exercise based on Occupation", x = "Physical Activity (min)",
       y = "Sleep Duration (hr)", color = "Occupation") +
  theme_gray()

plt1

plt2 <- ggplot(data = sleep) + 
  geom_point(mapping = aes(x= occup, y=dur, color= phys)) +
  scale_color_viridis(option = "turbo") +
  labs(title = "Sample Plot", x = "Occupation",
       y = "Sleep Duration (hr)", color = "Physical Activity (min)") +
  theme_light()

plt2

grid.arrange(plt1, plt2, ncol=2, nrow=1)

#BMI and Sleep Disorder
sleep.bmi <- ggplot(data = sleep) +
  geom_point(mapping = aes(x=sleep$BMI.Category, y=sleep$Sleep.Disorder)) +
  labs(title = "Relationship between BMI and Sleep Disorder",
       x = "BMI Category", y="Sleep Disorder") + 
  theme_light()

sleep.bmi
