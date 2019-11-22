##################################################################################
# Purpose: Create table of all species within the SCBI plot among all census years
# Developed by: Alyssa Terrell - terrella3@si.edu
# R version 3.6.1 - Created November 2019
##################################################################################

# Call data from GitHub
# Will need to change census number with each added census
for(f in paste0("scbi.stem", 1:3, ".rdata")) {
  print(f)
  url <- paste0("https://raw.github.com/SCBI-ForestGEO/SCBI-ForestGEO-Data/master/tree_main_census/data/", f)
  download.file(url, f, mode = "wb")
  load(f)
  file.remove(f)
}

# Create structure of data table
trialmat <- matrix(nrow = 5, ncol = 3)
colnames(trialmat) <- c("2008", "2013", "2018")
rownames(trialmat) <- c("Total Stems", "New Stems (recruit rate)", "Dead Stems", "Min DBH", "Max DBH")

trial <- as.data.frame(trialmat)
yearsfiles <- list(scbi.stem1, scbi.stem2, scbi.stem3)

# Get a list of unique species across all years, sort alphabetically
species <- c()
for(z in seq(along=yearsfiles)){
  sp <- unique(yearsfiles[[z]][,"sp"])
  species <- c(species, sp)
}
species <- unique(species)
species <- sort(species)

# Create a for loop that allows for needed information to be called and filled into the data table
# This loop will be applied to all species

result <- list()
for (j in seq(along=species)){

  for (i in 1:length(yearsfiles)){
  x <- yearsfiles[[i]]
  
  sp_sub <- x[x$sp == species[[j]], ]

    alive <- subset(sp_sub, DFstatus == "alive")
    alive$dbh <- as.numeric(alive$dbh)
    
    dead <- subset(sp_sub, DFstatus != "alive")
    
    #contents for table
    count <- nrow(alive)
    countnotalive <- nrow(dead)
    min <- min(alive$dbh, na.rm=TRUE)
    max <- max(alive$dbh, na.rm=TRUE)
    
    trial[1,i] <- count
    #trial[2,i] <- row 2 is # newly recruited stems. Method to calculate tbd. 
    trial[3,i] <- countnotalive
    trial[4,i] <- min
    trial[5,i] <- max
  }
  result[[j]] <- trial
}
names(result) <- species

# Save tables to GitHub
for (k in seq(along=(result))){
  write.csv(result[[k]], paste0("maps_figures_tables/ch_3_data_tables/", names(result)[[k]], ".csv"), row.names=TRUE)
}
