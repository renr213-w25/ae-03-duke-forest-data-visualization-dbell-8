install.packages("tidyverse")
library(tidyverse)

install.packages("tibble")
library(tibble)

install.packages("dplyr")
library(dplyr)

install.packages("openintro")
library(openintro)

duke_forest <- duke_forest %>%
  mutate(garage = if_else(str_detect(parking, "Garage"),   "Garage", "No garage"))

install.packages("ggplots2")
library(ggplot2)

view(duke_forest)

ggplot(duke_forest, aes(x = price)) + geom_histogram(aes(fill = garage), show.legend = FALSE, bins = 10) + 
  labs(title = "House Price Comparison of Duke Forest", subtitle = "Houses with Garages vs Without Garages", 
       x = "House Cost", y = "Number of Houses") + facet_wrap(~garage) 
