#### Preamble ####
# Purpose: Basic test on input data used in analysis
# Author: 
# Date: 
# License: MIT



#### Workspace setup ####
library(tidyverse)

#test fig_1 data
data1 = read_csv(here::here("inputs/data/fig_1.csv"))
#test all data is inbetween 1980 and 2020
all(data1$year >= 1980 & data$occurrence_year <= 2020)

# test brate_all is numeric
all(sapply(data1$brate_all, is.numeric))

#test fig_2e data 
data2 = read_csv(here::here("inputs/data/fig_2e.csv"))
#test all data is inbetween 1980 and 2020
all(data2$year >= 1980 & data$occurrence_year <= 2020)

# test brate is numeric
all(sapply(data2$brate_unmarried, is.numeric))
all(sapply(data2$brate_married, is.numeric))

#test fig_4 data
data3 = read_csv(here::here("inputs/data/fig_4.csv"))

#test all data is inbetween 1980 and 2020
all(data3$year >= 1980 & data$occurrence_year <= 2020)

# test brate is numeric
all(sapply(data3$brate_1519, is.numeric))
all(sapply(data3$brate_2024, is.numeric))
all(sapply(data3$brate_2529, is.numeric))
all(sapply(data3$brate_3034, is.numeric))
all(sapply(data3$brate_3539, is.numeric))
all(sapply(data3$brate_4044, is.numeric))


#test fig_5 data
data4 = read_csv(here::here("inputs/data/fig_5.csv"))

#test all data is inbetween 1980 and 2020
all(data4$year >= 1980 & data$occurrence_year <= 2020)

# test brate is numeric
all(sapply(data4$brate_lesshs, is.numeric))
all(sapply(data4$brate_hsgrad, is.numeric))
all(sapply(data4$brate_somecoll, is.numeric))
all(sapply(data4$brate_colgrad, is.numeric))
