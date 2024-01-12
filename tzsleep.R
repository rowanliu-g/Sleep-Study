###setup###
setwd("C:/Users/zheng/Sleep-study")
getwd()

library(datasets)
library(viridis)
library(ggplot2)
library(gridExtra)

read.csv("C:/Users/zheng/Sleep-study/Sleep_health_and_lifestyle_dataset.csv")
menu <- read.csv("Sleep_health_and_lifestyle_dataset.csv")

###data intro###
data(menu)
class(menu)
dim(menu)
head(menu)
summary(menu)

###plting###

