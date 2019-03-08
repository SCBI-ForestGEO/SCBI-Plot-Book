# before analyzing the data, the information needs to be called and loaded into the environment
install.packages("devtools")
install.packages("dplyr")
install.packages("tidyverse")
library(RCurl)
library(devtools)
library(dplyr)
library(tidyverse)

files <- list.files(path = "C:/Users/TerrellA3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-ForestGEO_Data/tree_main_census/data/census-csv-files/", pattern = "scbi.full")

year <- c(2008, 2013)

scbi_stem_alive <- NULL

# make the general table while filling in DBH and number of individuals information
for (i in seq(along = files)){
  for (j in seq(along = year)){
    if (i == j){
      fullfiles <- files[[i]]
      yr <- year[[j]]
      
      scbi_census_full <- read.csv(fullfiles, stringsAsFactors = FALSE)
      a <- subset(scbi_census_full, sp == "unk, NA")
      scbi_census_alive <- scbi_census_full[scbi_census_full$DFstatus %in% "alive" & scbi_census_full$dbh > 0, ]
      scbi_census_alive <- scbi_census_alive[ , which(colnames(scbi_census_alive) != "a")]
      MinMaxSCBI <- data.frame(scbi_census_alive %>% group_by(sp) %>% summarise(min = min(dbh), max = max(dbh), length = max(1:n())))
      MinMaxSCBI$stems <- " "
      MinMaxSCBI$newstems <- " "
      MinMaxSCBI$mortality <- " "
      MinMaxSCBI$growth <- " "
      MinMaxSCBI$year <- yr
      scbi_all_alive <- rbind(scbi_all_alive, MinMaxSCBI)
    }
  }
}

library(plyr)
rename(scbi_all_alive, c("length"="number of individuals"))

colnames(scbi_all_alive) <- gsub("length", "number of individuals", colnames(scbi_all_alive))

scbi_all_alive$sp <- as.factor(scbi_all_alive$sp)

for (sp in levels(scbi_all_alive$sp)) {
  sp_name <- paste0(sp, "_summary")
  
  x <- scbi_all_alive[scbi_all_alive$sp %in% sp, ]
  x <- x[ , which(colnames(x) != "sp")]
  x_long <- t(x)
  colnames(x_long) <- x_long["year", ]
  x_long <- x_long[which(rownames(x_long) != "year"), ]
  x_long <- as.data.frame(x_long)
  assign(sp_name, x_long)
  print(write.table(x_long, file = file.path(paste0("SCBI-Plot-Book/tables_for_chapter_3/", sp,
            ".html"))))
}