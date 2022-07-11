library(tidyverse)
county_rankings <- read.csv("http://www.stat.cmu.edu/cmsac/sure/2022/materials/data/health/optum_projects/county_rankings.csv")
teen_births <- read.csv("https://data.cdc.gov/api/views/y268-sna3/rows.csv?accessType=DOWNLOAD")
overdoses <- read.csv("~/SURE-2022/Drug-Alcohol Overdose.csv")

overdoses <- overdoses %>%
  mutate(ICD.Code.Description = fct_recode(ICD.Code.Description, 
                                           "Unknown Substance" = "X64  Intentional self-poisoning by/exposure to other and unspecified drugs, medicaments, and biological substances",
                                           "Gases/Vapors" = "X67  Intentional self-poisoning (suicide) by and exposure to other gases and vapors",
                                           "Pyschotic" = "X61  Inten. self-poisoning by/exposure to antiepileptic,sedative-hypnotic,antiparkinsonism,&psychotropic drugs,NEC",
                                           "Narcotics" = "X62  Intentional self-poisoning (suicide) by and exposure to narcotics and psychodysleptics [hallucinogens],NEC",
                                           "Anti-Inflammatory" = "X60  Intentional self-poisoning (suicide) by and exposure to nonopioid analgesics, antipyretics, and antirheumatics",
                                           "Noxious Subsatnces" = "X69  Intentional self-poisoning (suicide) by and exposure to other and unspecified chemicals and noxious substances",
                                           "Neuropathic " = "X63  Intentional self-poisoning (suicide) by and exposure to other drugs acting on the autonomic nervous system",
                                           "Alcohol" = "X65  Intentional self-poisoning (suicide) by and exposure to alcohol",
                                           "Hydrocarbons" = "X66  Intentional self-poisoning by and exposure to organic solvents and halogenated hydrocarbons and their vapors",
                                           "Pesticides " = "X68  Intentional self-poisoning (suicide) by and exposure to pesticides"))

overdoses


