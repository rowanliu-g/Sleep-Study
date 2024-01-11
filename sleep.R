getwd()
setwd("/Users/17739/Sleep-Study")

library(viridis)
library(ggplot2)
library(gridExtra)

#### DATA ####
sleep <- read.csv('https://github.com/rowanliu-g/Sleep-Study/blob/main/Sleep_health_and_lifestyle_dataset.csv')
class(sleep)
dim(sleep)
head(sleep)
