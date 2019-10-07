######################################################
# Purpose: Build US range maps of species present in ForestGEO plot
# Developed by: Ian McGregor - mcgregori@si.edu
# R version 3.5.2 - First created October 2018
######################################################
library(RCurl) #1a
library(data.table) #1a
library(leaflet) #1b
library(maps) #1b
library(htmlwidgets) #1b
library(maptools) #1b

#1 Main script
#1a determine the species and .shp files available from BIEN ####
##read in sp list used for book
fullsp <- read.csv(text=getURL("https://raw.githubusercontent.com/SCBI-ForestGEO/SCBI-ForestGEO-Data/master/species_lists/Tree%20ecology/SCBI_ForestGEO_sp_ecology.csv"))

subsp <- fullsp[,c(1:3,5)]
subsp$species <- as.character(subsp$species)
subsp$sp <- c(paste0(fullsp$genus, sep="_", fullsp$species))

##change species names if need be (synonyms in BIEN, as determined from http://vaplantatlas.org/index.php?do=start&search=Search)
##this is done because sometimes the species names that we use are synonyms for the data that BIEN has
subsp$sp <- gsub("Carya_ovalis", "Carya_glabra", subsp$sp)
subsp$sp <- gsub("Carya_tomentosa", "Carya_alba", subsp$sp)
subsp$sp <- gsub("Sambucus_canadensis var. canadensis", "Sambucus_canadensis", subsp$sp)

splist <- c(subsp$sp)

##read in BIEN website data and make clear what species are on website
test <- fread("http://vegbiendev.nceas.ucsb.edu/bien/data/ranges/shapefiles/")
colnames(test) <- c("full.string", "align", "breaks")
test$sp <- sub(".*zip\">", "", test$full.string)
test$sp <- sub("_range.*$", "", test$sp)
test$mapsource <- "BIEN"

##species in the BIEN database will be marked
subsp$mapsource <- test$mapsource[match(subsp$sp, test$sp)]

##this creates a vector of species that match between the fullsp list and the species available on the BIEN website.
matches <- unique (grep(paste(splist,collapse="|"), 
                        test$sp, value=TRUE))

## create list of URLs based on the matches
spfiles <- c(paste0("http://vegbiendev.nceas.ucsb.edu/bien/data/ranges/shapefiles/", matches, "_range.zip"))

URLs <- spfiles

#1b Call the shapefiles, unzip them, then make html maps for each ####

##the following code snippet defines a function whereby shapefile zip files are downloaded into a temp folder and directory.
##temp folders are automatically unlinked (deleted) and the working directory is set back to original within every iteration of the function. This means no shapefiles are stored to the drive.

##source: Kay Cichini (https://www.r-bloggers.com/batch-downloading-zipped-shapefiles-with-r/)
url_shp_to_spdf <- function(URL) {
  require(rgdal)
  wd <- getwd()
  td <- tempdir()
  setwd(td)
  temp <- tempfile(fileext = ".zip")
  download.file(URL, temp)
  unzip(temp)
  shp <- dir(tempdir(), "*.shp$")
  lyr <- sub(".shp$", "", shp)
  y <- lapply(X = lyr, FUN = function(x) readOGR(dsn=shp, layer=lyr))
  names(y) <- lyr
  unlink(dir(td))
  setwd(wd)
  return(y)
}

##now, run the function for each URL defined above
y <- sapply(URLs, url_shp_to_spdf)
# z <- unlist(y, recursive=TRUE) #this makes y easier to read, but also replicates the large list

##define the names of the list (y) as the sp names from matches. They are in the same order because the URL list was created from the matches vector.
##without this code, the leaflet function below gives error of "can't draw path from object of class list"
names(y) <- matches


##create maps of each shapefile
for (sp in names(y)){

  sp.poly <- y[[sp]]
  
  map <- leaflet() %>%
  addProviderTiles("CartoDB.Positron", group = "Map") %>%
  addProviderTiles("Esri.WorldTopoMap", group = "Topo") %>% 
  addProviderTiles("Esri.WorldShadedRelief", group = "Relief") %>%
  addPolygons(data=sp.poly, weight=2, fill=TRUE, fillColor="blue", fillOpacity = 0.25) %>%
  addScaleBar(position = "bottomleft") %>%
  addLayersControl(
    baseGroups = c("Map", "Topo", "Relief"),
    options = layersControlOptions(collapsed = FALSE)
  )
  
invisible(print(map))
saveWidget(map, file=paste0("maps_figures_tables/ch_3_US_range_maps/", sp,"_map.html"), selfcontained=TRUE)
}


#2 troubleshooting code
#2a RBIEN ####
##Because the BIEN package was unable to be used on Smithsonian computers, we created a standalone script.
##That being said, the package has many resources (e.g. downloading range maps) and should be used if the database connection works.

library(BIEN)
vignette("BIEN")

#2b other troubleshooting ####
library(leaflet)
library(maps)
library(htmlwidgets)
library(maptools)
library(rgdal)

##download litu shapefile from BIEN: http://vegbiendev.nceas.ucsb.edu/bien/data/ranges/shapefiles/
litu <- readOGR("~liriodendron_tulipifera_range.shp")

library(sp)
##the below line of code defines the projection as being WGS1984
#pj84 <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")

map <- leaflet() %>%
  # setView(-72.14600, 43.82977, zoom = 8) %>% 
  addProviderTiles("CartoDB.Positron", group = "Map") %>%
  addProviderTiles("Esri.WorldTopoMap", group = "Topo") %>% 
  addProviderTiles("Esri.WorldShadedRelief", group = "Relief") %>%
  addPolygons(data=litu, weight=2, fill=TRUE, fillColor="blue", fillOpacity = 0.25) %>%
  #addPolygons(data=quru, weight=1, color="#115F", fillOpacity = 0 [opacity is between 0 and 1]) %>% #can add multiple ranges to one map
  addScaleBar(position = "bottomleft") %>%
  addLayersControl(
    baseGroups = c("Map", "Topo", "Relief"),
    options = layersControlOptions(collapsed = FALSE)
  )


q <- leaflet() %>%
  addProviderTiles("Esri.WorldTopoMap", group = "Topo") %>%
  addScaleBar(position = "bottomleft")

invisible(print(map))

saveWidget(map, file="~litumap.html", selfcontained=TRUE)

#you can have multiple addPolygons lines, with either reading in different shapefiles or reading in actual shapes. Be sure to use ?addPolygons to see all the options (as in, fill color, popup, shape, etc).

#2c convert kml to shapefile ####
##it is possible to convert kml/kmz files to shapefiles (if a source like BIEN isn't available). The below code is the attempt to use this, and it is being preserved for posterity.

##first you have to rename the kmz as a zip (bc it's a zipped kml), then unzip it.
fnm <- c("~Quercus_prinus_final.dynglobcurrent3.elev.30000.kmz")

quprkml <- unzip(zipfile = "~Quercus_prinus_final.dynglobcurrent3.elev.30000.kmz", exdir = "folder/")

# then you open the kml file in R and convert it to a shapefile
## this can easily be done with readOGR and writeOGR.
## however, the layer attribute of the function is specified as what the layer is called within the kml file, which is NOT the same as the file name. The only way to find the layer name is by opening the kml file as a txt and finding what the polygon (in this case) is labeled as. See also (ogrListLayers and ogrInfo).

## in our case, the maps downloaded from ForeCASTS project don't have standard kmz format. A kmz = a zip kml file. These kmz files only have a basic kml file with a png attached showing the sp range. Current R packages can't work with this (#layers are defined as 0).

readOGR("maps_and_figures",layer="Quercus_prinus_final.dynglobcurrent3.elev.30000.kml")
writeOGR("maps_and_figures/quercus_prinus_range.shp",driver="ESRI Shapefile",layer=output.shp)

ogrListLayers("Quercus_prinus_final.dynglobcurrent3.elev.30000.kml")


