#### Preamble ####
# Purpose: Cleans Data
# Author:  Alexander Guarasci, Jagpreet Singh & Jake Gilbert 
# Date: 14 February 2023
# Contact: alexander.guarasci@mail.utoronto.com, j.gilbert@mail.utoronto.ca & jagpreetsingh.singh@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv(here::here("inputs/data/figs_2a_2b.csv"))
cleaned_data <- raw_data|>
  select(year,brate_1519,brate_2024,brate_2529,brate_3034,brate_3539,brate_4044)

write_csv(cleaned_data, here::here("/inputs/data/fig_4.csv"))
