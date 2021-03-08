library(showtext)
library(tidyverse)

font_add_google("Lato", "Lato")
font_add_google("Merriweather", "Merriweather")
showtext_auto()

ggplot(mtcars, aes(mpg, wt, color = as.character(gear))) +
  geom_point() +
  labs(
    title = "Car Weights vs MPG",
    subtitle = "The more a car weights, the more gas it uses per mile",
    caption = "Source: 1974 Motor Trend US magazine"
  ) +
  theme(
    # Use 10.6667 for larger plots, 8 for smaller
    text = element_text(family = "Merriweather", size = 8),
    plot.title = element_text(family = "Lato", size = rel(2.5), face = "bold"),
    plot.subtitle = element_text(size = rel(2)),
    axis.title = element_text(size = rel(1.5), hjust = 0),
    axis.title.y = element_text(angle = 0),
    legend.title = element_text(size = rel(1.5)),
    plot.caption = element_text(size = rel(1.25), hjust = 0),
    axis.text = element_text(size = rel(1.25)),
    legend.text = element_text(size = rel(1.25)),
    
    plot.title.position = "plot",
    plot.caption.position = "plot",
  
    legend.position = "top",
    legend.justification = "left",


    # panel 
    panel.grid.minor = element_blank(),
    axis.ticks = element_blank(),
    #panel.background = element_blank()
  )
