###############################################
# Purpose: Create maps via 'ggplot2' that displays the distribution of each species throughout the SCBI plot
# Developed by: Alyssa Terrell - terrella3@si.edu
# R version 3.5.2 - First created April 2019
###############################################

# install needed packages
library(fgeo)
library(ggplot2)
library(rgdal)
library(sf)
library(RCurl)

# Script to go from SIGEO quadrat coordinates to SIGEO grid coordinates to NAD83 coordinates #####
# Following chunk of code is sourced from the original found within the 'spatial_data' folder located in the SCBI-ForestGEO-Data repo on GitHub

# Need code to convert coordinates before making map for each species

## Written by Dunbar Carpenter, edited by J.Thompson ##
## 2/1/2011
## Modified by Erika Gonzalez 03/01/2017 and Ian McGregor 04/08/2019

### Overall modification done by Alyssa Terrell as it pertains to the project being done

# Read full data or stem data files, bring them from 'Github/SCBI-ForestGEO-Data/tree_main_census/data/census-csv-files'
# Here we will use stem2, where all stems measured in 2013 (including dead stems) are included

sigeo <- read.csv(text=getURL("https://raw.githubusercontent.com/SCBI-ForestGEO/SCBI-ForestGEO-Data/master/tree_main_census/data/census-csv-files/scbi.stem2.csv"), stringsAsFactors = FALSE)

# Plot grid coordinates to see if they make sense
plot(sigeo$gx, sigeo$gy)

## Get local coordinates by calculating based on grid coordinates.
## To replicate, you subtract gx by (20*(quadrat divided by 100) minus 1).
## For gy, it's the same thing but the remainder of the quadrat divided by 100.
sigeo$lx <- sigeo$gx - 20*((sigeo$quadrat %/% 100) - 1)
sigeo$ly <- sigeo$gy - 20*((sigeo$quadrat %% 100) - 1)

# Round local coordinates to nearest tenth
sigeo$lx <- round(sigeo$lx, digits = 1)
sigeo$ly <- round(sigeo$ly, digits = 1)

# Install this package if you don't have it, get libraries
# install.packages("rgdal")
library(sp)
library(rgdal)

## NAD83 coordinates of the SW and NW corners of the SIGEO plot
NAD83.SW <- c(747385.521, 4308506.438)                     
NAD83.NW <- c(747370.676, 4309146.156)

## Angle (in radians) at which the plot's western boundary is offset from true NAD83 line of latitude
Offset <- atan2(NAD83.NW[1] - NAD83.SW[1], NAD83.NW[2] - NAD83.SW[2])

## Function that transforms grid coordinates into NAD83 coordinates
grid2nad83 <- function(x, y) {
  NAD83.X <- NAD83.SW[1] + (x*cos(Offset) + y*sin(Offset))
  NAD83.Y <- NAD83.SW[2] + (-x*sin(Offset) + y*cos(Offset))
  nad83 <- list(NAD83.X, NAD83.Y)
  names(nad83) <- c("NAD83_X", "NAD83_Y")
  nad83
}

## Add NAD83 coordinate columns to SIGEO data table
sigeo <- data.frame(sigeo, grid2nad83(sigeo$gx, sigeo$gy))

# Add lat lon to the file, first run these 2 lines
utmcoor <- SpatialPoints(cbind(sigeo$NAD83_X, sigeo$NAD83_Y), proj4string=CRS("+proj=utm +zone=17N"))
longlatcoor <- spTransform(utmcoor, CRS("+proj=longlat"))

# Add the results ('latlongcoor' output) as two new columns in original dataframe 
sigeo$lat <- coordinates(longlatcoor)[,2]
sigeo$lon <- coordinates(longlatcoor)[,1]
plot(sigeo$lon, sigeo$lat)

# Following part of script is to create maps species within the plot ####

# Load in needed programs
# Not all programs are loaded to avoid any masking

# Information will first be pulled from "scbi.stem2.csv" to see if one species can be done before creating a for loop to do all species

library(fgeo)
library(ggplot2)
library(rgdal)
library(broom) # for the tidy function
library(sf) # for mapping
library(ggthemes) # needed for plot theme

## Files can be found in the ForestGEO-Data repo on GitHub

scbi_plot <- readOGR("/spatial_data/shapefiles/20m_grid.shp")

ForestGEO_grid_outline <- readOGR("/spatial_data/shapefiles/ForestGEO_grid_outline.shp")

deer <- readOGR("/spatial_data/shapefiles/deer_exclosure_2011.shp")

roads <- readOGR("/spatial_data/shapefiles/SCBI_roads_edits.shp")

streams <- readOGR("/spatial_data/shapefiles/SCBI_streams_edits.shp")

contour_10m <- readOGR("/spatial_data/shapefiles/contour10m_SIGEO_clipped.shp")

# Convert all shp to dataframe so that it can be used by ggplot ####

# If tidy isn't working, can also do: xxx_df <- as(xxx, "data.frame")

scbi_plot_df <- tidy(scbi_plot) ##### Use this option if you want to visualize the plot WITH quadrat/grid lines
ForestGEO_grid_outline_df <- tidy(ForestGEO_grid_outline) ##### Use this option if you want to visualize the plot WITHOUT quadrat/grid lines
deer_df <- tidy(deer)
roads_df <- tidy(roads)
streams_df <- tidy(streams)
contour_10m_df <- tidy(contour_10m)

#### contour_full <- read.csv("C:/Users/terrella3/Dropbox (Smithsonian)/Github_Alyssa/SCBI-ForestGEO-Data/spatial_data/elevation/contour10m_SIGEO_coords.csv")

# x and y give the x/yposition on the plot; sprintf says to add 0 for single digits, the x/y=seq(...,length.out) says fit the label within these parameters, fitting the length of the label evenly.

## This code adds the row and column numbers based on coordinates

rows <- annotate("text", x = seq(747350, 747365, length.out = 32), y = seq(4309125, 4308505, length.out = 32), label = sprintf("%02d", 32:1), size = 5.25, color = "black")

cols <- annotate("text", x = seq(747390, 747765, length.out = 20), y = seq(4308495, 4308505, length.out = 20), label = sprintf("%02d", 1:20), size = 5.4, color = "black")

# This will be the foundation of where the data points from each species within each census will go ####

### Needed to add contour lines - online research says that function needed to do this isn't upgraded to current R version yet
# library(directlabels)
# direct.label.ggplot(ggplot_test, method="bottom.pieces")

# Make a for loop for all species

sigeo$DFstatus[sigeo$DFstatus %in% c("dead")] <- "dead"
sigeo$DFstatus[sigeo$DFstatus %in% c("alive", "prior", "lost_stem")] <- "alive"

# for loop for making maps for all species
for(i in seq(along = unique(sigeo$sp))){
  focus_sp <- unique(sigeo$sp)[[i]]
  focus_sp_df <- sigeo[sigeo$sp == focus_sp, ]
  focus_sp_alive <- subset(focus_sp_df, DFstatus == "alive")
  focus_sp_dead <- subset(focus_sp_df, DFstatus == "dead")
  
  #ggplot code ####
  ggplot_test <- ggplot() +
    geom_point(data = focus_sp_alive, aes(x = NAD83_X, y = NAD83_Y, color = dbh), size = 1) +
    geom_point(data = focus_sp_dead, aes(x = NAD83_X, y = NAD83_Y), size = 1) +
    geom_path(data = ForestGEO_grid_outline_df, aes(x = long, y = lat, group = group)) +
    geom_path(data = roads_df, aes(x = long, y = lat, group = group), color = "brown",
              linetype = 2, size = .8) +
    geom_path(data = streams_df, aes(x = long, y = lat, group = group), color = "blue", size = 0.5) +
    labs() +
    geom_path(data = deer_df, aes(x = long, y = lat, group = group), size = .7) +
    geom_path(data = contour_10m_df, aes(x = long, y = lat, group = group), color = "gray", linetype = 1) +
    # stat_contour(data = contour_full, aes(colour = ..elev..)) +
    ### scale_fill_brewer(palette = "Spectral") 
    ### scale_color_distiller(palette = "Spectral") +
    scale_colour_gradientn(colours=rainbow(3)) +
    ### scale_fill_continuous(type = "viridis") + ###
    ### scale_color_viridis_c() + ###
    theme(plot.title = element_text(vjust=0.1),
          axis.title.x = element_blank(),
          axis.text.x = element_blank(),
          axis.ticks.x = element_blank(),
          axis.title.y = element_blank(),
          axis.text.y = element_blank(),
          axis.ticks.y = element_blank()) +
    coord_sf(crs = "crs = +proj=merc", xlim = c(747350, 747800), ylim = c(4308500, 4309125)) +
    theme(panel.grid.major = element_line(colour = 'transparent')) +
    theme(legend.position = "bottom", legend.box = "horizontal") +
    theme(panel.background = element_rect(fill = "gray98")) +
    rows +
    cols
  
    # other code ####
  ggsave(filename = paste0("maps_figures_tables/ch_3_distribution_maps/", focus_sp, ".jpg"), plot = ggplot_test)
}
