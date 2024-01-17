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
table(menu$Sleep.Disorder)
table(menu$Stress.Level)
plot(menu$Stress.Level, menu$Sleep.Duration)
plot(menu$Stress.Level, menu$Quality.of.Sleep)

###ggplots###
plt1 <- ggplot(data =menu) +
  geom_point(mapping = aes(x= Sleep.Duration, y=Quality.of.Sleep, color= Sleep.Disorder)) +
  labs(title = "Sleep durationa and quality based on disorder", x= "sleep duration (hr)", y= "sleep quality" )
plt1

plt2 <- ggplot(data = menu) +
  geom_histogram(mapping = aes(x= Sleep.Duration), breaks = seq(from=0, to=12, by=1)) +
  labs(title = "Sleep durationa count", x= "sleep duration (hr)", y= "hours" )
plt2


