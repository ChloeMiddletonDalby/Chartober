#Chloe

rm(list = ls())
pacman::p_load(tidyverse, expss, lubridate, gganimate, ggmap, gifski) 

data <- read.csv("01-data.csv")

data %>%
  ggplot( aes(x=LD, y=AGE, fill=FALSE)) +
  geom_boxplot() +
  geom_jitter(color="black", size=0.4, alpha=0.9) +
  theme(
    legend.position="none",
    plot.title = element_text(size=11)
  ) +
  ggtitle("A boxplot with jitter") +
  xlab("")