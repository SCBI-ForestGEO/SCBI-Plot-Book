# creating maps for scbi plotbook


library(maptools)

litu <- readOGR("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/liriodendron_tulipifera_range.shp")
litumap <- gmap(extent(litu),lonlat=TRUE,type="satellite")


#1 easy range map code for book (plot and regional) ####
library(leaflet)
library(maps)
library(htmlwidgets)
library(maptools)

## for scbi plot
setwd("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures")

dendro <- read.csv("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/dendro_cored_full[sample].csv")
bounds <- map("state", "virginia", fill=TRUE, plot=FALSE)

dendro$tag <- as.character(dendro$tag)

map <- leaflet(data = dendro) %>%
  # setView(-72.14600, 43.82977, zoom = 8) %>% 
  addProviderTiles("CartoDB.Positron", group = "Map") %>%
  addProviderTiles("Esri.WorldTopoMap", group = "Topo") %>% 
  addProviderTiles("Esri.WorldShadedRelief", group = "Relief") %>%
  addMarkers(lng=~lon, lat=~lat, label = ~tag, group = "Trees") %>% 
  addPolygons(data=dendro, groups="Trees",weight=2, fillOpacity = 0) %>%
  addScaleBar(position = "bottomleft") %>%
  addLayersControl(
    baseGroups = c("Map", "Topo", "Relief"),
    overlayGroups = c("Trees", "States"),
    options = layersControlOptions(collapsed = FALSE)
  )

invisible(print(map))
saveWidget(map, file="dendro.html", selfcontained=TRUE)


## for sp range maps
library(rgdal)

litu <- readOGR("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/liriodendron_tulipifera_range.shp")


#library(sp)
##the below line of code defines the projection as being WGS1984
#pj84 <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")

bounds <- map("usa",fill=TRUE, plot=FALSE)

map <- leaflet() %>%
  # setView(-72.14600, 43.82977, zoom = 8) %>% 
  addProviderTiles("CartoDB.Positron", group = "Map") %>%
  addProviderTiles("Esri.WorldTopoMap", group = "Topo") %>% 
  addProviderTiles("Esri.WorldShadedRelief", group = "Relief") %>%
  addPolygons(data=litu, weight=2, fillOpacity = 0) %>%
  #addPolygons(data=quru, weight=1, color="#115F", fillOpacity = 0) %>%
  addScaleBar(position = "bottomleft") %>%
  addLayersControl(
    baseGroups = c("Map", "Topo", "Relief"),
    options = layersControlOptions(collapsed = FALSE)
  )

invisible(print(map))

saveWidget(map, file="litumap.html", selfcontained=TRUE)

#you can have multiple addPolygons lines, with either reading in different shapefiles or reading in actual shapes. Be sure to use ?addPolygons to see all the options (as in, fill color, popup, shape, etc).


#2 convert kml to shapefile ####
#1 first you have to rename the kmz as a zip (bc it's a zipped kml), then unzip it.
fnm <- c("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/Quercus_prinus_final.dynglobcurrent3.elev.30000.kmz")

quprkml <- unzip(zipfile = "C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/Quercus_prinus_final.dynglobcurrent3.elev.30000.kmz", exdir = "C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures")

#2 then you open the kml file in R and convert it to a shapefile

## this can easily be done with readOGR and writeOGR.
## however, the layer attribute of the function is specified as what the layer is called within the kml file, which is NOT the same as the file name. The only way to find the layer name is by opening the kml file as a txt and finding what the polygon (in this case) is labeled as. See also (ogrListLayers and ogrInfo).

## in our case, the maps downloaded from ForeCASTS project don't have standard kmz format. A kmz = a zip kml file. These kmz files only have a basic kml file with a png attached showing the sp range. Current R packages can't work with this (#layers are defined as 0).

readOGR("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures",layer="Quercus_prinus_final.dynglobcurrent3.elev.30000.kml")
writeOGR("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/quercus_prinus_range.shp",driver="ESRI Shapefile",layer=output.shp)


ogrListLayers("Quercus_prinus_final.dynglobcurrent3.elev.30000.kml")


#3a getting data from shapefiles online ####

## the following code won't work due to Smithsonian blocking SQL connection to the website
library(BIEN)
litutest <- BIEN_ranges_load_species("Liriodendron_tulipifera_range")

## the following code is the easiest way to download just shapefiles.
## here the function download.shapefile is defined before running
download.shapefile<-function(shape_url,layer,outfile=layer)
{
  #written by: jw hollister
  #Oct 10, 2012
  
  #set-up/clean-up variables
  if(length(grep("/$",shape_url))==0)
  {
    shape_url<-paste(shape_url,"/",sep="")
  }
  #creates vector of all possible shapefile extensions
  shapefile_ext<-c(".shp",".shx",".dbf",".prj",".sbn",".sbx",
                   ".shp.xml",".fbn",".fbx",".ain",".aih",".ixs",
                   ".mxs",".atx",".cpg")
  
  #Check which shapefile files exist
  if(require(RCurl))
  {
    xurl<-getURL(shape_url)
    xlogic<-NULL
    for(i in paste(layer,shapefile_ext,sep=""))
    {
      xlogic<-c(xlogic,grepl(i,xurl))
    }
    
    #Set-up list of shapefiles to download
    shapefiles<-paste(shape_url,layer,shapefile_ext,sep="")[xlogic]
    #Set-up output file names
    outfiles<-paste(outfile,shapefile_ext,sep="")[xlogic]   }
  #Download all shapefiles
  if(sum(xlogic)>0)
  {
    for(i in 1:length(shapefiles))
    {
      download.file(shapefiles[i],outfiles[i],
                    method="auto",mode="wb")
    }
  } else
  {
    stop("An Error has occured with the input URL
         or name of shapefile")
  }
}

litutest <- download.shapefile("http://vegbiendev.nceas.ucsb.edu/bien/data/ranges/shapefiles/", "Liriodendron_tulipifera_range.zip")


#3b downloading and extracting shp from zip (e.g. from BIEN) ####

##read in sp list used for book
fullsp <- read.csv("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-ForestGEO-Data/species_lists/Tree ecology/SCBI_ForestGEO_sp_ecology.csv")

subsp <- fullsp[,c(1:3,5)]
subsp$species <- as.character(subsp$species)
subsp$sp <- c(paste0(fullsp$genus, sep="_", fullsp$species))
subsp$species <- gsub("prinus", "montana", subsp$species)
subsp$sp <- gsub("prinus", "montana", subsp$sp)
splist <- c(subsp$sp)

##read in BIEN website data and make clear what species are on website
library(data.table)
test <- fread("http://vegbiendev.nceas.ucsb.edu/bien/data/ranges/shapefiles/")
colnames(test) <- c("full.string", "align", "breaks")
test$sp <- sub(".*zip\">", "", test$full.string)
test$sp <- sub("_range.*$", "", test$sp)
test$mapsource <- "BIEN"

##species in the BIEN database will be marked
subsp$mapsource <- test$mapsource[match(subsp$sp, test$sp)]

##this creates the vector to be used below
matches <- unique (grep(paste(splist,collapse="|"), 
                        test$sp, value=TRUE))

spfiles <- c(paste0("http://vegbiendev.nceas.ucsb.edu/bien/data/ranges/shapefiles/", matches, "_range.zip"))

URLs <- spfiles

##this function from Kay Cichini (https://www.r-bloggers.com/batch-downloading-zipped-shapefiles-with-r/)

newd <- dir.create("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/shapfiles")
path <- ("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/shapfiles")
setwd("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/shapfiles")

##i tried editing this myself but not working
url_shp_to_spdf <- function(URL) {
  require(rgdal)
  wd <- getwd()
  temp <- tempfile(fileext = ".zip")
  download.file(URL, temp)
  unzip(temp)
  loc <- path
  shp <- dir(path, "*.shp")
  lyr <- sub(".shp", "", shp)
  y <- lapply(X = lyr, FUN = function(x) readOGR(dsn=loc, layer=lyr))
  names(y) <- lyr
  setwd(wd)
  return(y)
}
y <- lapply(URLs, url_shp_to_spdf)

##maybe this will work in for loop
for (i in URLs){
  require(rgdal)
  temp <- tempfile(fileext = ".zip")
  download.file(i, temp)
  unzip(temp)
  loc <- path
  shp <- dir(path, "*.shp")
  lyr <- sub(".shp", "", shp)
  y <- lapply(X = lyr, FUN = function(x) readOGR(dsn=loc, layer=lyr))
}

##delete directory
unlink("C:/Users/mcgregori/Dropbox (Smithsonian)/Github_Ian/SCBI-Plot-Book/maps_and_figures/shapfiles", recursive=TRUE)

##now use y to make the graphs for each sp
library(leaflet)
library(maps)
library(htmlwidgets)
library(maptools)
bounds <- map("usa",fill=TRUE, plot=FALSE)

for (sp in URLs){
  
  setwd(tempdir())
  
  map <- leaflet(shpdata) %>%
  # setView(-72.14600, 43.82977, zoom = 8) %>% 
  addProviderTiles("CartoDB.Positron", group = "Map") %>%
  addProviderTiles("Esri.WorldTopoMap", group = "Topo") %>% 
  addProviderTiles("Esri.WorldShadedRelief", group = "Relief") %>%
  addPolygons(data=shpdata, weight=2, fillOpacity = 0) %>%
  #addPolygons(data=quru, weight=1, color="#115F", fillOpacity = 0) %>%
  addScaleBar(position = "bottomleft") %>%
  addLayersControl(
    baseGroups = c("Map", "Topo", "Relief"),
    options = layersControlOptions(collapsed = FALSE)
  )

invisible(print(map))

saveWidget(map, file=paste0(shpdata,"_map.html"), selfcontained=TRUE)

}
z <- unlist(unlist(y))

#original function ####
##this function works but mapping isn't possible bc it says "can't find file path to object of class list"
##this function from Kay Cichini (https://www.r-bloggers.com/batch-downloading-zipped-shapefiles-with-r/)
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
y <- lapply(URLs, url_shp_to_spdf)
z <- unlist(unlist(y))