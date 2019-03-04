# install needed packages and load library
install.packages("drat")
drat::addRepo("forestgeo")
install.packages("fgeo", "here")
library(fgeo)
library(dplyr)
library(tidyverse)
library(here)

files <- list.files(path = "SCBI-ForestGEO_Data/tree_main_census/data/census-csv-files/", pattern = "scbi.full")

year <- c(2008, 2013)

scbi_all_alive <- NULL

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






######################################################

stems <- abundance(scbi_census_alive %>% group_by(sp))
stems_long <- t(stems)
scbi_all_alive <- merge(scbi_all_alive, stems_long) 




######################################################################################################

# if above code doesn't work, longer way is below

#set working directory. will make it easier to call and read all of censuses
setwd("V:/SIGEO/3-RECENSUS 2013/DATA/FINAL DATA to use, to share/")
scbi_full1 <- read.csv("SCBI-ForestGEO_Data/tree_main_census/data/census-csv-files/scbi.full1.csv")

# steps for 2008 census
#extract "alive" statuses and dbhs over 0 cm
scbi_full_2008 <- scbi_full1[scbi_full1$DFstatus %in% "alive" & scbi_full1$dbh > 0, ]

# create a dataframe that summarizes min and max dbh and number of individuals per species 
MinMaxSCBI2008 <- data.frame(scbi_full_2008 %>% group_by(sp)%>% summarise(min = min(dbh), max = max(dbh), length = max(1:n())))

# add "year" column to dataframe
MinMaxSCBI2008$year <- 2008

# do the same steps for next census - this example is 2013 census
scbi_full2 <- read.csv("SCBI-ForestGEO_Data/tree_main_census/data/census-csv-files/scbi.full2.csv")
scbi_full_2013 <- scbi_full2[scbi_full2$DFstatus %in% "alive" & scbi_full2$dbh > 0, ]
MinMaxSCBI2013 <- data.frame(scbi_full_2013 %>% group_by(sp)%>% summarise(min = min(dbh), max = max(dbh), length = max(1:n())))
MinMaxSCBI2013$year <- 2013

# merge censuses into one
# will display all data for one census at a time (i.e. 2008 THEN 2013) - this is okay
# change name 'length' to 'number of individuals'
merged20082013 <- rbind(MinMaxSCBI2008, MinMaxSCBI2013)
colnames(merged20082013) <- gsub("length", "number of individuals", colnames(merged20082013))

#subset each species and get rid of "acne" column (don't need it since it's going to be in specific species section)
acne <- subset(merged20082013, sp == "acne")
acne <- acne[,which(colnames(acne) != "sp")]

# direction of table is wide
# make direction of table long
acnelong <- t(acne)

# colnames for acne, set column names as selected years
colnames(acnelong) <- acnelong["year",]
rownames(acnelong)

# x = rownames of acneFlipped
# y = what you don't want rowname to be
# dataframe <- dataframeName[which(x != y),]

acnecombined <- acnelong[which(rownames(acnelong) != "year"),]
