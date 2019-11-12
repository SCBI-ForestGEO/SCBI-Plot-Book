library(data.table)
scbi_stem1<- read.csv("C:/Users/TerrellA3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files/scbi.stem1.csv")
scbi_stem2<- read.csv("C:/Users/TerrellA3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files/scbi.stem2.csv")
scbi_stem3<- read.csv("C:/Users/TerrellA3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files/scbi.stem3.csv")

              
trialmat <- matrix(nrow = 9, ncol = 3)
colnames(trialmat) <- c("2008", "2013", "2018")
rownames(trialmat) <- c("Total Stems", "New Stems (recruit rate)", "Dead Stems (mortality rate)", "Min DBH", "Max DBH", "Mean Growth Rate <10cm", "Mean Growth Rate >10cm", "95% Growth Rate <10cm", "95% Growth Rate >10cm")
#trialmat <- trialmat


trial <- as.data.frame(trialmat)

yearsfiles <- list(scbi_stem1, scbi_stem2, scbi_stem3)

uni <- unique(test$sp)

for (j in 1:length(uni)){
  
  trial <- as.data.frame(trialmat)

for (i in 1:length(yearsfiles)){
  x <- yearsfiles[[i]]
  


test <- subset(x, DFstatus == "alive")
testnotalive <- subset(x, DFstatus != "alive")





co <- nrow(libetest)
libetest$dbh <- as.numeric(libetest$dbh)
mi <- min(libetest$dbh)
ma <- max(libetest$dbh)
cm10great <- subset(libetest, dbh > 10)
cm10less <- subset(libetest, dbh < 10)
greatmean <- mean(cm10great$dbh)
lessmean <- mean(cm10less$dbh)
conotalive <- nrow(testnotalive)


trial[1,i] <- co
trial[3,i] <- conotalive
trial[4,i] <- mi
trial[5,i] <- ma
trial[6,i] <- lessmean
trial[7,i] <- greatmean

}

  for (i in seq(along=(uni))){
    write.csv(trial, paste0("C:/Users/terrella3/Dropbox (Smithsonian)/GitHub_Alyssa/SCBI-Plot-Book/R Scripts/test_df/", (uni)[[i]], ".csv"), row.names=TRUE)
  }

  
}



trial.table <- as.table(trial)
trial.table

