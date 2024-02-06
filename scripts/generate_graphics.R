#### Preamble ####
# Purpose: Models... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(ggplot2)

#### Read data ####

### Figure 1 ####
# Read cleaned data for fig-1
data <- read.csv(here::here("inputs/data/fig_1.csv"))

# Fig-1 line graph and linear regression
ggplot(data, aes(x = year, y = brate_all)) + 
    geom_line() +
    theme_minimal() +
    labs(title = "US Birth Rates from 1980 to 2020",
         x = "Year",
         y = "Birth Rate per 1,000 women") + 
  geom_smooth(method = "lm", aes(group = 1), color = "blue")

# Save graph
ggsave(file.path("outputs/figures", "fig_1.pdf"), width = 10, height = 6)

### Figure 2 ###
# Read cleaned data for figure 2
data <- read.csv(here::here("inputs/data/fig_4.csv"))
# Creates line graph
ggplot() + 
    geom_line(data = data, aes(x = year, y = brate_1519, color = "15-19")) +
    geom_line(data = data, aes(x = year, y = brate_2024, color = "20-24")) +
    geom_line(data = data, aes(x = year, y = brate_2529, color = "25-29")) +
    geom_line(data = data, aes(x = year, y = brate_3034, color = "30-34")) +
    geom_line(data = data, aes(x = year, y = brate_3539, color = "35-39")) +
    geom_line(data = data, aes(x = year, y = brate_4044, color = "40-44")) +
    theme_minimal() +
    labs(title = "US Birth Rates by Age Group (1980-2020)",
         x = "Year",
         y = "Birth Rate",
         color = "Age Group")
# Save graph
ggsave(file.path("outputs/figures", "fig_2.pdf"), width = 10, height = 6)

### figure 3 ###
# Read cleaned data for fig 2
data <- read.csv(here::here("inputs/data/fig_5.csv"))
# Create line graph for birth rates based on education level 
ggplot() + 
    geom_line(data = data, aes(x = year, y = brate_lesshs, color = "Less than High School")) +
    geom_line(data = data, aes(x = year, y = brate_hsgrad, color = "High School Graduate")) +
    geom_line(data = data, aes(x = year, y = brate_somecoll, color = "Some College")) +
    geom_line(data = data, aes(x = year, y = brate_colgrad, color = "College Graduate")) +
    theme_minimal() +
    labs(title = "US Birth Rates by Education Level (1992-2019)",
         x = "Year",
         y = "Birth Rate",
         color = "Education Level")
# Save Graph
ggsave(file.path("outputs/figures", "fig_3.pdf"), width = 10, height = 6)


### Figure 4 ###
# Read cleaned data for figure 4
data <- read.csv(here::here("inputs/data/fig_2e.csv"))
#create line graph from data based on marital status
ggplot(data, aes(x = year)) + 
    geom_line(aes(y = brate_married, color = "Married")) +
    geom_line(aes(y = brate_unmarried, color = "Unmarried")) +
    theme_minimal() +
    labs(title = "US Birth Rates by Marital Status (1980-2020)",
         x = "Year",
         y = "Birth Rate",
         color = "Marital Status")
# Save graph
ggsave(file.path("outputs/figures", "fig_4.pdf"), width = 10, height = 6)
