# Explanation of scripts

US_range_map = creates interactive (Shiny) range maps (N/S America) of all ForestGEO species in the book. Data is pulled from BIEN and sourced in the script

### Not present here: species_distribution_maps.R
The script for species distribution within the ForestGEO plot itself is housed in the [ForestGEO-Data](https://github.com/SCBI-ForestGEO/SCBI-ForestGEO-Data/tree/master/R_scripts) repo. This is because 
- the script references shapefiles that are also within that repo (allowing for non-personal directories when loading them in via the ForestGEO-Data RProject)
- rendering the book only uses the outputs from this script, *not* the script itself. What the script does is create individual .jpg files showing each species distribution in the plot. These images are saved to the plotbook folder, which are then called to the book.
- this script was created to originally be in the public repo
