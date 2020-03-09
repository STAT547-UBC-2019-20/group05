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

fix_likert_1 <- function(df){
  for (i in seq_along(df)){
    str_replace(df, "7 = Extremely satisfied", "7")
    str_replace(df, "4 = Neither satisfied nor dissatisfied", "4")
    str_replace(df, "1 = Not at all satisfied", "1")
  }
}

# 
# fix_likert_1 <- function (df){
#   for (i in seq_along(df)){
#     if (i == '7 = Extremely satisfied'){
#       df[[i]] <- 7
#     }
#     else if (i == '4 = Neither satisfied nor dissatisfied'){
#       df[[i]] <- 4
#     }
#     else if (i == '1 = Not at all satisfied'){
#       df[[i]] <- 1
#     }
#   }
# }
# 

for (i in 1:10){
  str_replace(survey_data$supervisor_relationship[i], "7 = Extremely satisfied", "7")
}


fix_likert_1(survey_data$supervisor_relationship)
fix_likert_1(survey_data$work_life_balance)

#map(survey_data, function(df) fix_likert_1(df))

view(survey_data)

ggplot(survey_data, aes(current_living_location)) +
  geom_bar(width = .8, fill = "steelblue") +
  coord_flip() +
  xlab("Continent") +
  ylab("Number of Graduate Students") +
  theme_minimal() +
  ggsave('basic_demographics1.png', path = here("images"), width = 8, height = 5)
