# min, mean, max, and number of individuals for each species during each census

## use this script to calculate the min, mean, and max of each species within the plot
## this script will also produce the number of individuals from each species are present in the plot during each census

## load csv that is being used into global environment

library(readxl)
scbi_stem1 <- read.csv("V:/SIGEO/3-RECENSUS 2013/DATA/FINAL DATA to use, to share/scbi.stem1.csv")
View(scbi_stem1)

## filter out 'alive' status from 'dead' status (calculations are only needed from species still alive)
## to exclude any mishaps, filter out dbh that is 0

scbi_stem1 <- droplevels(scbi_stem1[scbi_stem1$DFstatus %in% "alive" & scbi_stem1$dbh > 0, ])

## from the "scbi_stem1" tab created, pick out the information that is needed
## in this case min, mean, max, and number of individuals is needed


tapply(scbi_stem1$dbh, scbi_stem1$sp, summary, dbh > 0)
summary.by.sp <- tapply(scbi_stem1$dbh, scbi_stem1$sp, function(x)
  return(round(data.frame(min = min(x), mean = mean(x), max = max(x), n = length(x)), 2)))

summary.by.sp <- data.frame(sp = names(summary.by.sp), do.call(rbind, summary.by.sp), row.names = NULL)

acne <- summary.by.sp[which(summary.by.sp$sp == "acne"), ]



## another way to run code if statuses are not available
## example will be used with 2018 census data

## load csv into global environment

recensus2018 <- read.csv("V:/SIGEO/2-RECENSUS 2018/DATA/CTFS_Backups/recensus2018.csv", stringsAsFactors = F)
str(recensus2018)
table(recensus2018$Codes)

## will produce a table that includes 'dead' statuses and dbh starting at '0'
## to get rid of this, limit what dbh measurements and statuses should be included in data

dead <- c("D", "DS", "DC", "DN", "DS;R", "Dc;R")

recensus_sub <- subset(recensus2018, recensus2018$DBH >= 1 & !(recensus2018$Codes %in% dead))

tapply(recensus_sub$DBH, recensus_sub$Mnemonic, summary, DBH > 0)
summary.by.sp <- tapply(recensus_sub$DBH, recensus_sub$Mnemonic, function(x)
  return(round(data.frame(min = min(x), mean = mean(x), max = max(x), n = length(x)), 2)))

summary.by.sp <- data.frame(sp = names(summary.by.sp), do.call(rbind, summary.by.sp), row.names = NULL)
