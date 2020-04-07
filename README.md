# The Mental Health Toll of Graduate School

In [Nature's yearly survey of over 6000 graduate students,](https://www.nature.com/articles/d41586-019-03459-7) positives outweigh the negatives. 75% of students pursuing graduate research are at least somewhat satisfied with their decision to pursue a career on doctoral research. Nonetheless, survey questions that dig into the mental health toll of this career path reveal a perilous journey for most. With 36% of respondents reporting the need to seek help for anxiety or depression triggered by their studies, and a similar percentage declaring that their university does not promote a healthy work-life balance, survey answers in this area raise concerns about the mental health status of doctoral students. Harrasment and bullying also remain distressingly commonplace.

**In our project,** we aim to investigate the relationship between these two question areas (mental health & feelings of harrasment/bullying) and other variables that we hypothesise may be related to positive and/or negative outcomes. For example, are those pursuing a degree far from home more likely to suffer from anxiety and depression? Are instances of harrasment and/or bullying male-biased? In an effort to shed some light into the matter, we will study these questions in detail.

# Directory

A brief directory for easy navigation of our project repo.

+ **docs** contains all .Rmd files, and our final report (eventually!)

+ **data** holds all the data generated in the project.

+ **scripts** comprises the scripts created throughout the project.

+ **images** has any images relevant for our report, and those created by scripts.

+ **tests** contains tests for functions created in the project.

# Acknowledgments

Data used for this project is publicly available with a C4 Creative Commons license [here](https://figshare.com/s/74a5ea79d76ad66a8af8) and it is the result of a survey developed by Nature magazine. 

# Usage

1. Clone this repo.

2. Ensure the following packages are installed:

```
library(tidyverse)
library(dplyr)
library(ggplot2)
library(stringr)
library(purrr)
library(here)
library(corrplot)
library(docopt)
library(janitor)
library(glue)
library(broom)
library(dotwhisker)
library(tinytex)
library(kableExtra)
library(modelr)
library(tidyquant)
library(DT)
```
## Manual Usage

3. Run the following scripts (in order) with the appropriate arguments specified

  - Download data: [(load.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/load.R) 
    ```
    Rscript scripts/load.R 'https://ndownloader.figshare.com/files/18543320?private_link=74a5ea79d76ad66a8af8'
    ```
  
  - Wrangle/clean/process data: [(clean.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/clean.R)
    ```
    Rscript scripts/clean.r --filepath="data/survey_raw.csv"
    ```
  
  - EDA script to export images: [(EDA.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/EDA.R)
    ```
    Rscript scripts/EDA.r --filepath="data/survey_data.csv"
    ```
    
  - Analysis script with logistic regression models: [(analysis.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/analysis.R)
    ```
    Rscript scripts/analysis.R --data_path="data/" --data_file="survey_data.csv"
    ```
  
  - Knit final report: [(knit.R)](https://github.com/STAT547-UBC-2019-20/group05/blob/master/scripts/knit.R)
    ```
    Rscript scripts/knit.R --finalreport="docs/milestone-03/finalreport.Rmd"
    ```
    
## GNU MAKE Usage

The repo contains a [Makfile](https://github.com/STAT547-UBC-2019-20/group05/blob/master/Makefile) which can be referenced for all the target scripts and outputs. All of the scripts in Manual Usage (above) are contained within this Makefile, along with make all and clean all options.

In order to delete all outputted images and docs created by this analysis, enter this from the terminal:
```
make clean
```
In order to run entire analysis from start to finish, enter this from the terminal:
```
make all
```
Make all will call a series of scripts (outlined in "Manual Usage" above) in sequence in order to produce the entire analysis

# Dashboard App

## Final Product:

Our group's complete dashbaord can be found via the following link. Enjoy!

https://phd-satisfaction-ij.herokuapp.com/

## Dashboard Creation Process

As part of [milestone 4](https://github.com/STAT547-UBC-2019-20/group05/tree/master/docs/milestone-04), we have created an idea for a dashboard and a preliminary sketch of what it would look like. Detailed [instructions](https://stat545.stat.ubc.ca/evaluation/milestone_04/milestone_04/) on what is expected from this assignment are in the STAT547 website under [team projects](https://stat545.stat.ubc.ca/evaluation/projects/). Task #1 entails addressing student feedback on our project progress thus far.



### A map to finding satisfaction in your PhD
##### *Data-driven sources of happiness in graduate school*

### Description (~300 words)

Our app will have three "pages":

+ A **home** page that shows the different charts we have created for our dataset.

+ An **about** page that gives some information about its purpose and puts it into context.

+ A **contact** page if the user were to have any further questions.

The home page has two main parts:

1. A satisfaction section that plots the levels of satisfaction of students about their decision to start a PhD vs. now that they have started grad school. From a dropdown list, users will be able to explore how these levels of satisfaction change in relation to a few demographic variables, such as age or gender. 

2. A section that explores the relationships between student satisfaction currently (while in graduate school) in relation to other variables that we hypothesise may have an effect on satisfaction. The user will be able to explore these variables from a dropdown menu, which include supervisor relationship, PhD weekly hours, work-life balance... There will also be an option to visualize up to 2 variables at a time, i.e relationship between student satisfaction & supervisor relationship, coloured by work-life balance.

### Usage Scenario

Andi is a fourth year undergraduate student, and she is currently looking at her options to choose a graduate program. She has heard from multiple people that graduate school can be a great source of stress, and is unsure of what to look for in a supervisor / learning environment that will minimize this stress or at least provide ways to cope. Browsing the internet for resources and guides on how to do this, she finds our dashboard app. She is able to explore different variables that current graduate students have reported in relation to their satisfaction, and this gives her a clearer idea of what to look for when meeting potential supervisors or choosing a particular program. 

### Example sketch

![](https://github.com/STAT547-UBC-2019-20/group05/blob/master/docs/milestone-04/dashboard.png)

