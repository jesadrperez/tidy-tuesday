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
    text = element_text(family = "Merriweather", size = 12),
    plot.title = element_text(family = "Lato", size = rel(2)),
    plot.title.position = "plot",
    plot.subtitle = element_text(size = rel(1.25)),
    legend.text = element_text(size = rel(0.875)),
    legend.position = "top",
    legend.justification = c(0, 1),
    axis.text = element_text(size = rel(0.875)),
    axis.title.x = element_text(hjust = 0),
    axis.title.y = element_text(angle = 0),
    plot.caption.position = "plot",
    plot.caption = element_text(hjust = 0),
    # panel 
    panel.grid.minor = element_blank()
  )