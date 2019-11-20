###########################################################
# Purpose: Create table of all species within the SCBI plot
# Developed by: Alyssa Terrell - terrella3@si.edu
# R version 3.6.1 - Created November 2019
###########################################################

# Call data from local drive
# Will need to change census number with each added census
for(f in paste0("scbi.stem", 1:3, ".rdata")) {
  print(f)
  url <- paste0("https://raw.github.com/SCBI-ForestGEO/SCBI-ForestGEO-Data/master/tree_main_census/data/", f)
  download.file(url, f, mode = "wb")
  load(f)
  file.remove(f)
}

# Create structure of data table
trialmat <- matrix(nrow = 9, ncol = 3)
colnames(trialmat) <- c("2008", "2013", "2018")
rownames(trialmat) <- c("Total Stems", "New Stems (recruit rate)", "Dead Stems (mortality rate)", "Min DBH", "Max DBH", "Mean Growth Rate <10cm", "Mean Growth Rate >10cm", "95% Growth Rate <10cm", "95% Growth Rate >10cm")
##trialmat <- trialmat


trial <- as.data.frame(trialmat)

yearsfiles <- list(scbi.stem1, scbi.stem2, scbi.stem3)

uni <- unique(test$sp)

# Create a for loop that allows for needed information to be called and filled into the data table
# This loop will be applied to all species
for (j in 1:length(uni)){
  
  trial <- as.data.frame(trialmat)

for (i in 1:length(yearsfiles)){
  x <- yearsfiles[[i]]
  
test <- subset(x, DFstatus == "alive")
testnotalive <- subset(x, DFstatus != "alive")

count <- nrow(libetest)
libetest$dbh <- as.numeric(libetest$dbh)
min <- min(libetest$dbh)
max <- max(libetest$dbh)
cm10great <- subset(libetest, dbh > 10)
cm10less <- subset(libetest, dbh < 10)
greatmean <- mean(cm10great$dbh)
lessmean <- mean(cm10less$dbh)
countnotalive <- nrow(testnotalive)

trial[1,i] <- count
trial[3,i] <- countnotalive
trial[4,i] <- min
trial[5,i] <- max
trial[6,i] <- lessmean
trial[7,i] <- greatmean
}

  for (i in seq(along=(uni))){
    write.csv(trial, paste0("C:/Users/terrella3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-Plot-Book/R Scripts/test_df/", (uni)[[i]], ".jpg"), row.names=TRUE)
  }
}

# Save tables to GitHub
for (i in seq(along=(uni))){
  write.csv(trial, paste0("https://raw.github.com/SCBI-ForestGEO/SCBI-Plot-Book/master/maps_figures_tables/ch_3_data_tables/", (uni)[[i]], ".jpg"), row.names=TRUE)
  }
}
