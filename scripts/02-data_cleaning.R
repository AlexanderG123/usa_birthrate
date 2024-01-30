#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("~/usa_birthrate/inputs/data/figs_2a_2b.csv")
cleaned_data <- raw_data|>
  select(year,brate_1519,brate_2024,brate_2529,brate_3034,brate_3539,brate_4044)

write_csv(cleaned_data,"~/usa_birthrate/inputs/data/fig_4.csv")

