#### Preamble ####
# Purpose: Generates the figures used in the paper
# Author:  Alexander Guarasci, Jagpreet Singh & Jacob Gilbert
# Date: 14 February 2023
# Contact: alexander.guarasci@mail.utoronto.com, j.gilbert@mail.utoronto.ca & jagpreetsingh.singh@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have data downloaded



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
       y = "Birth Rate per 1,000 women",
       color = "Age Group") +
  theme(legend.position = "bottom",
        legend.title = element_text(size=8),
        legend.key.width = unit(0.5, "cm")) +
  guides(color = guide_legend(nrow = 1))
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
       y = "Birth Rate per 1,000 women",
       color = "Education Level") +
  theme(legend.position = "bottom",
        legend.title = element_text(size=8),
        legend.text = element_text(size=7),
        legend.key.width = unit(0.5, "cm"), 
        legend.key.height = unit(.3, 'cm')) +
  guides(color = guide_legend(nrow = 2))

# Save Graph
ggsave(file.path("outputs/figures", "fig_3.pdf"), width = 10, height = 6)


### Figure 4 ###
# Read cleaned data for figure 4
data <- read.csv(here::here("inputs/data/fig_2e.csv"))
#create line graph from data based on marital status
ggplot(data, aes(x = year)) + 
  geom_line(aes(y = brate_married, color = "Married")) +
  geom_line(aes(y = brate_unmarried, color = "Unmarried")) +
  geom_smooth(aes(y = brate_married), method = "lm", color = "red", linetype = "dashed", size = 0.3, se = FALSE) +
  geom_smooth(aes(y = brate_unmarried), method = "lm", color = "blue", linetype = "dashed", size = 0.3, se = FALSE) +
  theme_minimal() +
  labs(title = "US Birth Rates by Marital Status (1980-2020)",
       x = "Year",
       y = "Birth Rate per 1,000 women",
       color = "Marital Status") +
  theme(legend.position = "bottom")
# Save graph
ggsave(file.path("outputs/figures", "fig_4.pdf"), width = 10, height = 6)
