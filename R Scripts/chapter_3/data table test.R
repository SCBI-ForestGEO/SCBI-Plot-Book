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





############## THIS CODE IS WORKING
recensus2018 <- read.csv("V:/SIGEO/2-RECENSUS 2018/DATA/CTFS_Backups/recensus2018.csv", stringsAsFactors = FALSE)
str(recensus2018)
table(recensus2018$Codes)

# Will produce a table that includes 'dead' statuses and dbh starting at '0'
# To get rid of this, limit what dbh measurements and statuses should be included in data

dead <- c("D", "DS", "DC", "DN", "DS;R", "Dc;R")
recensus_sub <- subset(recensus2018, recensus2018$DBH >= 1 & !(recensus2018$Codes %in% dead))

tapply(recensus_sub$DBH, recensus_sub$Mnemonic, summary, DBH > 0)
summary.by.sp <- tapply(recensus_sub$DBH, recensus_sub$Mnemonic, function(x)
  return(round(data.frame(min = min(x), mean = mean(x), max = max(x), n = length(x)), 2)))

summary.by.sp <- data.frame(sp = names(summary.by.sp), do.call(rbind, summary.by.sp), row.names = NULL)

summary.by.sp$newcolumn <- c("New Stems", "Dead Stems")




test <- subset(summary.by.sp, select = c("sp", "min", "max", "n"))

colnames(test) <- c("Species", "Min DBH", "Max DBH", "Total Stems")
