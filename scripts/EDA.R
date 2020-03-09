library(tidyverse)
library(dplyr)
library(ggplot2)

#Load in survey_data csv file
survey_data <- read.csv(here::here("data", "survey_data.csv"))
view(survey_data)

fix_likert_1 <- function (df){
  for (i in seq_along(df)){
    if (i == '7 = Extremely satisfied'){
      i = 7
    }
    else if (i == '4 = Neither satisfied nor dissatisfied'){
      i = 4
    }
    else if (i == '1 = Not at all satisfied'){
      i = 1
    }
  }
  
}

map(survey_data, fix_likert_1(df))

view(survey_data)

ggplot(survey_data, aes(current_living_location)) +
  geom_bar(width = .8, fill = "steelblue") +
  coord_flip() +
  xlab("Continent") +
  ylab("Number of Graduate Students") +
  theme_minimal() +
  ggsave('basic_demographics1.png', path = here("images"), width = 8, height = 5)
