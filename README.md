# Deciphering the Trends: A Comprehensive Analysis of US Birth Rates and Educational Attainment from 1980 to 2020

## Overview

The code in this repository is used for the construction of analysis and associated paper Deciphering the Trends: A Comprehensive Analysis of US Birth Rates and Educational Attainment from 1980 to 2020 by Jagpreet Singh, Alexander Guarasci & Jacob Gilbert.


## File Structure

The repo is structured as follows:

-   `input/data` contains .csv files used in the analysis provided by https://www.aeaweb.org
-   `input/llm` A usage.txt file containing chat with chat.openai.com chat
-   `outputs/simulation` Contains simulated data as a csv file of what the data should look like for modelling
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `outputs/figures` Contains pdf version of the figures used in the paper
-   `scripts` contains the R scripts used to simulate, download, clean and generate figures used in the paper

## Data source
Data was pulled from the replication package of the AEA article (The Puzzle of Falling US Birth Rates since the Great Recession)[https://www.aeaweb.org/articles?id=10.1257/jep.36.1.151]. 
This data used was originally obtained from National Center
for Health Statistics (NCHS) microdata and data from the NBER Natality Database.

## Software requirements
R (version 4.3.2)
-  tidyverse
-  ggplot2
-  knitr

## LLM Usage
The only time we used the LLM was when asking for help removing the figure captions from our graphs. This was because I couldn't find anything online that explicitly explained how to do this. Ultimately, ChatGPT 3.5 was not able to help with this task which ended up being fine because in the end we wanted the figure captions anyway.  