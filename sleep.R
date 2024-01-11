library(ggplot2)
ggplot(data=mpg) +
  geom_point(mapping = aes(x = cty,
                           y = hwy,
                           color = class))

