library(tidyverse)
county_rankings <- read.csv("http://www.stat.cmu.edu/cmsac/sure/2022/materials/data/health/optum_projects/county_rankings.csv")
teen_births <- read.csv("https://data.cdc.gov/api/views/y268-sna3/rows.csv?accessType=DOWNLOAD")
overdoses <- read.csv("~/SURE-2022/Drug-Alcohol Overdose.csv")

teen_births <- teen_births %>%
  filter(Year == 2019)

teen_births

