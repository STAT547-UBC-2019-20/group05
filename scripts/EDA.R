library(tidyverse)
library(dplyr)
library(ggplot2)
library(stringr)
library(purrr)

#Load in survey_data csv file
survey_data <- read.csv(here::here("data", "survey_data.csv"))
view(survey_data)

#Create images folder
dir.create("images")

view(survey_data)

#Create basic demographics plot, save to images folder
ggplot(survey_data, aes(current_living_location)) +
  geom_bar(width = .8, fill = "steelblue") +
  coord_flip() +
  xlab("Continent") +
  ylab("Number of Graduate Students") +
  theme_minimal() +
  ggsave('basic_demographics1.png', path = here("images"), width = 8, height = 5)
