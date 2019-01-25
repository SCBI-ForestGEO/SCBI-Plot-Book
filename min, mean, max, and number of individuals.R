# min, mean, max, and number of individuals for each species during each census

## use this script to calculate the min, mean, and max of each species within the plot
## this script will also produce the number of individuals from each species are present in the plot during each census

## load csv that is being used into global environment

scbi_full2 <- read.csv("C:/Users/Alyssa/Dropbox (Smithsonian)/VNPS_Alyssa Terrell/scbi.full2.csv")

## filter out 'alive' status from 'dead' status (calculations are only needed from species still alive)
## to exclude any mishaps, filter out dbh that is 0

scbi_full2 <- droplevels(scbi_full2[scbi_full2$status %in% "A" & scbi_full2$dbh > 0, ])

## from the "scbi_full2" tab created, pick out the information that is needed
## in this case min, mean, max, and number of individuals is needed

tapply(scbi_full2$dbh, scbi_full2$sp, summary, dbh > 0)
summary.by.sp <- tapply(scbi_full2$dbh, scbi_full2$sp, function(x)
  return(round(data.frame(min = min(x), mean = mean(x), max = max(x), n = length(x)), 2)))
summary.by.sp <- data.frame(sp = names(summary.by.sp), do.call(rbind, summary.by.sp), row.names = NULL)

