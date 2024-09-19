# Purpose: Simulates marrige 
# Author: Yuechen Zhang 
# Date: 19 Sep 2024 
# Contact: yuechen.zhang@mail.utoronto.ca
# License: Uoft
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
set.seed(304)
start_date <- as.Date("2018-01-01")
end_date <- as.Date("2023-12-31")

number_of_dates <- 100

data <- 
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marrige = rpois(n = number_of_dates, lambda = 15)
  )

write.csv(data, file = "data/raw_data/simulated.csv")



