#########################################
# Purpose: Create table of all species within the SCBI plot
# Developed by: Alyssa Terrell - terrella3@si.edu
# R version 3.5.2 - First created February 2019, rewritten April 2019, modified May 2019
##########################################

# Install and load needed packages
library(devtools)
library(plyr)
library(tidyverse)

# Here we will use 'stem2.csv' - the 2013 census

## files can be found in the ForestGEO-Data repo on GitHub

# create empty data table
# will fill in with extracted data
## the hope is to create a for loop that will create an empty datatable for each species and then automatically fill in the information
## end goal: have separate and filled data tables for all species

table_test <-  matrix(nrow = 9, ncol = 3)
# will need to add a column each time a new census is added (example: 2023 wil be ncol = 4)

rownames(table_test) <- c("Total stems", "New stems (recruit rate)", "Dead stems (mortality rate)", "Min dbh", "Max dbh", "Mean growth rate < 10cm", "Mean growth rate > 10cm", "p95 growth rate < 10cm", "p95 growth rate > 10cm")

year <- c("2008", "2013", "2018")

colnames(table_test) <- c(year)

# Read in data, bring them from 'GitHub/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files'
scbi_stem2 <- read.csv("C:/Users/TerrellA3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files/scbi.stem2.csv")

scbi_stem2_alive <- scbi_stem2[scbi_stem2$DFstatus %in% "alive" & scbi_stem2$dbh > 0,]

dbh_test_2013 <- ddply(scbi_stem2_alive, c("sp"), summarise, min = min(dbh), max = max(dbh), length = length(dbh))

view(dbh_test_2013)

names(dbh_test_2013)[names(dbh_test_2013) == "min"] <- "Min dbh"
names(dbh_test_2013)[names(dbh_test_2013) == "max"] <- "Max dbh"
names(dbh_test_2013)[names(dbh_test_2013) == "length"] <- "Total stems"

###################
test <- table_test[, 2]
test <- data.frame(test)
view(test)

fram_data <- subset(dbh_test_2013, sp == "fram")
fram_t <- t(fram_data)
view(fram_t)

fram_data_joined <- join_all(test, fram_t)
view(fram_data_joined)

#############################
