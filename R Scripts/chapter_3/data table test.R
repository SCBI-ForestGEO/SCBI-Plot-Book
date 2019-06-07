#########################################
# Purpose: Create table of all species within the SCBI plot
# Developed by: Alyssa Terrell - terrella3@si.edu
# R version 3.5.2 - First created February 2019, rewritten April 2019, modified May 2019, used June 2019
##########################################

# Load needed packages
# Call data from local drive

library(data.table)
scbi_stem1<- read.csv("C:/Users/TerrellA3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files/scbi.stem1.csv")
species <- levels(scbi_stem1$sp)

censuses <- 1:2
## Will need to change number with each added census
## Example: when 2018 census is added, change '1:2' to '1:3'

years <- c(2008, 2013)
## Will need to add subsequent census years before running code

all_sp_test <- list()

# Create a nested for loop
## Outer loop: separates out each species within species list and transforms dataframe from long to wide before converting it to a datatable
## Inner loop: subsets alive stems and creates a dataframe for each species with labeled rows
for(sp in species) {
  
  test <- list()
  
  for(census in censuses) {
    
    stem <- read.csv(paste0("C:/Users/TerrellA3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files/scbi.stem", census, ".csv"))
    stem <- stem[stem$DFstatus %in% "alive" & stem$dbh > 0,]
    
    dat <- stem[stem$sp %in% sp, ]
    
    test[[census]] <- data.frame("Total stems" = nrow(dat),
                                 "New stems (recruit rate)" = NA,
                                 "Dead stems (mortality rate)" = NA,
                                 "Min dbh" = min(dat$dbh, na.rm = TRUE),
                                 "Max dbh" = max(dat$dbh, na.rm = TRUE),
                                 "Mean growth rate < 10cm" = NA,
                                 "Mean growth rate > 10cm" = NA,
                                 "p95 growth rate < 10cm" = NA,
                                 "p95 growth rate > 10cm" = NA
    )
  }
  
  test <- as.data.frame(t(do.call(rbind, test)))
  colnames(test) <- years
  
  all_sp_test[[sp]] <- as.data.table(test)
}

# Create 
for (i in seq(along=(all_sp_test))){
  write.csv(all_sp_test[[i]], paste0("C:/Users/terrella3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-Plot-Book/R Scripts/test_df/", names(all_sp_test)[[i]], ".csv"), row.names=TRUE)
}