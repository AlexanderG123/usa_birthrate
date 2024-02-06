#### Preamble ####
# Purpose: Simulates the data 
# Author:  Alexander Guarasci, Jagpreet Singh & Jake Gilbert 
# Date: 14 February 2023
# Contact: alexander.guarasci@mail.utoronto.com, j.gilbert@mail.utoronto.ca & jagpreetsingh.singh@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(8)
years <- 1980:2020

#simulated data for fig_1
mean_brate <- 65
sd_brate <- 3
brate_all_simulated <- rnorm(length(years), mean_brate, sd_brate)
simulated_data <- data.frame(year = years, brate_all = brate_all_simulated)
write_csv(x = simulated_data, file = "outputs/simulation/sim_fig_1.csv")




#simulate data for fig_4

brate_1519 <- rnorm(length(years), mean = 50, sd = 10)
brate_2024 <- rnorm(length(years), mean = 120, sd = 10)
brate_2529 <- rnorm(length(years), mean = 110, sd = 10)
brate_3034 <- rnorm(length(years), mean = 60, sd = 10)
brate_3539 <- rnorm(length(years), mean = 20, sd = 10)
brate_4044 <- rnorm(length(years), mean = 5, sd = 10)
simulated_data2 <- data.frame(year = years, brate_1519 = brate_1519, brate_2024 = brate_2024,
                              brate_2529 = brate_2529, brate_3034 = brate_3034, brate_3539 = brate_3539,
                              brate_4044 = brate_4044)
simulated_data2
write_csv(x = simulated_data2, file = "outputs/simulation/sim_fig_4.csv")

# simulate data for fig_2e
brate_unmarried <- rnorm(length(years), mean = 40, sd = 5)
brate_married <- rnorm(length(years), mean = 90, sd = 5)
simulated_data3 <- data.frame(year = years, brate_unmarried = brate_unmarried, brate_married = brate_married)
write_csv(x = simulated_data3, file = "outputs/simulation/sim_fig_2e.csv")

#simulate data for fig_5
brate_lesshs <- rnorm(length(years), mean = 100, sd = 10)
brate_hsgrad <- rnorm(length(years), mean = 75, sd = 5)
brate_somecoll <- rnorm(length(years), mean = 60, sd = 5)
brate_colgrad <- rnorm(length(years), mean = 70, sd = 5)

simulated_data4 <- data.frame(year = years, brate_lesshs = brate_lesshs, brate_hsgrad = brate_hsgrad,
                             brate_somecoll = brate_somecoll, brate_colgrad = brate_colgrad)

write_csv(x = simulated_data4, file = "outputs/simulation/sim_fig_5.csv")



