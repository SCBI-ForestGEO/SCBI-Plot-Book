--- 
title: "Smithsonian Conservation Biology Institute Temperate Forest Dynamics Plot"
author: "Erika Gonzalez-Akre, Alyssa Terrell, William McShea, Ian McGregor, Caroline Kittle, Kristina Anderson-Teixeira"
date: "2019-11-20"
output: html_document
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bibtex, packages.bib]
biblio-style: apalike
link-citations: yes
link-as-notes: true
description: "An overview of the Smithsonian Conservation Biology Institute's research plot."
url: https://github.com/SCBI-ForestGEO/SCBI-Plot-Book
---

# Preface {-}
This is our first online release for the *SCBI ForestGEO Large Forest Dynamics Plot*, a preliminary version of an eventual printed release.  

Our goal is to present basic ecological and botanical data, tree distribution maps, and growth and mortality data on all woody species measured in the 5-year surveys in our 25.6 ha plot.


This book was fuly written in R Markdown, using RStudio as text editor and the bookdown package [@xie_bookdown:_2016]. The source code is hosted on GitHub at https://github.com/SCBI-ForestGEO/SCBI-Plot-Book. 







<!--chapter:end:index.Rmd-->

# Introduction

The [Smithsonian Conservation Biology Institute](https://nationalzoo.si.edu/conservation) (SCBI) Large Forest Dynamics Plot is part of the [Forest Global Earth Observatory](https://forestgeo.si.edu/) (ForestGEO), a worldwide initiative established by a global network of forest scientists being the only monitoring forest network applying standardized  methods at all terrestrial biomes [@andersonteixeira_ctfs-forestgeo:_2015]. The SCBI plot was stablished in the spring of 2008, the second USA plot within the [Temperate Program]( https://forestgeo.si.edu/research-programs/temperate-forests) at ForestGEO. 

Our site has a renowned history among the historic military context in the area due to its role as animal training facility for army’s use. Originally called the *Front Royal Quartermaster Remount Depot* with land prominently comprised of pastures and forest patches, it functioned as a federal facility which produced horses and mules for cavalry units [@ayers_saint_goss_cultural_2007].

Within the original purchased land in 1909 (2,077 ha or 5,132 acres) lies the *Posey Field* where the plot is located, this area was considered the best timber site in the Depot [@sunquist_preliminary_1982]. In 1948, the land was transferred to the United States Department of Agriculture (USDA) as a cattle breeding station which was discontinued in 1973 to later be transferred to the National Zoological Park of the Smithsonian Institution in 1975 [@ayers_saint_goss_cultural_2007]. The land has been prevented from logging and other severe human disturbances since then. 

The Front Royal campus, which houses SCBI, expands 1,296 hectares (3,200 acres) and combines research and academic facilities, undisturbed forested areas, pastures, and animal enclosures. The SCBI is a global leading institution focusing to save endangered wildlife species from extinction and training future generations of conservationists.

<!--chapter:end:01-Introduction.Rmd-->

# Physical Environment

## Geographic location
The SCBI ForestGEO Large Forest Dynamics Plot is located within the Smithsonian Conservation Biology Institute (SCBI) in Virginia, USA (38$^\circ$ 53'36.6"N, 78$^\circ$ 08'43.4"W) located at the intersection of the Blue Ridge, Ridge and Valley, and Piedmont physiographic provinces and to the northwest of the Shenandoah National Park (Figure 1). Elevations range from 273 to 338 meters above sea level (masl) with a topographic relief of 65m [@bourg_initial_2013]. 

![Figure 1. Location of the SCBI ForestGEO Large Forest Dynamics Plot ](maps_figures_tables/ch_2_maps/plot_location.jpg)


## Climate
The SBI plot is located in a mature (> 100 year) and young (< 40 year) secondary secondary mixed deciduous forest, with a mean annual temperature of 12$^\circ$C and a mean annual precipitation of 1001 mm (data from 2009-2014 based on a local weather station located just outside the plot). According to the Koppen-Geiger biome classifcation, the plot falls within the Cfa zone, characterized as humid subtropical/midlatitude with significant precipitation year-round.Primary natural disturbances at the plot consist of wind and ice storms [@andersonteixeira_ctfs-forestgeo:_2015].

Climate data from the weather tower adjancet to the plot and managed by primary investigators can be access through a public GitHub repository [here](https://github.com/forestgeo/Climate/tree/master/Met_Station_Data/SCBI). Other multiple climatic data products are also available in the NEON website for the SCBI core site [here](https://data.neonscience.org/browse-data?siteCode=SCBI)

<!--chapter:end:02-Physical-Environment.Rmd-->

---
output:
  html_document: default
  pdf_document: default
fontsize: 12pt
---
# Species Descriptions

This chapter consist of botanical descriptions and ecological information on the 65 woody species measured within the 25.6-ha SCBI-ForstGEO plot. Species names are arranged alphabetically by family and species; species scientific name, authorship, and common names follow the Flora of Virginia conventions [@weakley_flora_2012]. If a synonym for a species name is given, then it is written after the symbol "=" below the species name used in the plot. The following are the main descriptors used for each species.

*Botanical descriptions*: All species in the plot were given a brief technical plant description summarized from the Flora of Virginia [@weakley_flora_2012] and the “Common Native Trees of Virginia” guide [@powell_common_2007]. Ecological aspects were subtracted from various sources [@weakley_flora_2012; @noauthor_missouri_nodate]. Local habitat and species distribution refer to those within the plot.

*Stratum*: Indicates the main canopy position of the species based on the diameter of the species measured at the SCBI plot and by qualitative observations within the forest.

*Native status*: Indicates if the plant species is native or introduced to Virginia [@weakley_flora_2012].

*Conservation status*: Conservation status follows the standards from the IUCN Red List categories [@noauthor_standards_2016]: Least Concern: populations stable or taxon that do not qualify as threatened. Near threatened: taxon close to qualifying as threatened category in the near future). Vulnerable:  A taxon considered to be facing a high risk of extinction in the wild. Endangered: A taxon considered to be facing a very high risk of extinction in the wild. Critically endangered: A taxon considered to be facing an extremely high risk of extinction in the wild.

*Field code*: Species code used in the field and data sets (first two letters of genus and first two letters of species).

*Summary statistics*: A table summarizing basic statistics per species per census within the plot, include:  number of individual (stems), new stems (total stems recruited and recruitment rate), stems dead and annual mortality rates, minimum and maximum DBH, mean growth rate for stems < and > 10 cm.

*Species distribution maps within plot*: Distribution of each species within the 25.6 ha plot is illustrated in an individual topographic map (10-m contour lines). The blue lines represent 2 streams running North-South and East-West within the plot, the dotted red line represents a gravel road, and the black thick line represents a 4-ha deer exclusion established in 1990 [@bourg_initial_2013]. Diameter for alive and dead stems stems are symbolized as follow: by a gradient color scale 1-10 cm DBH, green dot; 10.1-50 cm DBH, yellow dot; 50.1 cm DBH and above, blue dot; dead stems of any size, are represented by a black dot. The maps illustrate the species as surveyed in 2018. 

*Species regional range*: In the online version of this book, we present species range map for all species within the plot, except for *Elaeagnus umbellata*. Maps were sourced from the Botanical Information and Ecology Network [@noauthor_botanical_nodate] and depicts the distribution of the species globally.

*Pictures and graphs*: A leaf or group of leaves images are shown for each species. Leaves were collected fresh, scanned flat and images enhanced using the software GIMP 2.10.8. A 2-cm scale is given in the lower right corner. Pictures of tree cores are shown when available. Those pictures were produced using an Epson Expression 12000XL Photo Scanner. Climate sensitivity graphs built from tree cores show the relationship between multiple climate variables and tree growth, those graphs are only shown for 12 species (see @helcoski_growing_2019 for methods to build graphs).



## Adoxaceae
### *Sambucus canadensis* L. {-#Sambucus-canadensis}
Common name: Common Elderberry. Species code: saca. Stratum: understory. Native. Conservation status: Least concern.

Deciduous shrubs 1-4 m bark smooth with abundant lenticels, hairless; leaves compound, opposite, 15-30 cm, leaflets elliptic to lanceolate, 5-11 cm long, acuminate, margin sharply serrate, dark green above and much paler below; flat-topped cluster of flowers (cymes) 5-20 cm wide, flowers white, 3-4 mm, fragant; fruits drupes, 3-6 mm, deep purple or black, borne in flat-topped clusters. Infrequent through the plot, mostly occurring in damp soils.

![text](maps_figures_tables/ch_3_distribution_maps/saca.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/Sambucus_canadensis_map.html){width=75%}

### *Viburnum acerifolium* L. {-#Viburnum-acerifolium}
Common name: Mapleleaf Viburnum. Species code: viac. Stratum: understory. Native. Conservation status: Least concern. 

Deciduous shrubs, stems 1-2 m, bark smooth, twigs pubescent when young; leaves simple, opposite, 5-10 cm long, ovate or orbicular, rounded or hart-shape basally, palmately veined, three lobed, margin coarsely dentate, pubescent; flowers small, white, appearing in flat topped clusters 2-9 cm wide; drupes globose, 6-9 mm, black or purplish black, occurring in flat topped clusters. Infrequent through the plot, growing in dry areas. 

![text](maps_figures_tables/ch_3_distribution_maps/viac.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/viburnum_acerifolium_map.html){width=75%}

###	*Viburnum prunifolium* L. {-#Viburnum-prunifolium}
Common name: Black Haw. Species code: vipr. Stratum: understory. Native. Conservation status: Least concern.

Deciduous shrubs up to 8 m bark gray-brown breaking up into small square plates; leaves simple, opposite, 3-8 cm long, oval or oblong to elliptic, margin finely serrate,  dark green above and paler below.; flowers very small, white appearing in dense slightly rounded clusters 5-10 cm wide; drupes ellipsoid to subglobose, 8-15 mm, blue-black, hanging in clusters. Common through the plot, in wet to dry areas.  

![text](maps_figures_tables/ch_3_distribution_maps/vipr.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/viburnum_prunifolium_map.html){width=75%}

###	*Viburnum recognitum* Fernald {-#Viburnum-recognitum}
  **= *Virbunum dentatum L. var. lucidum***

Common name: Smooth Arrow-wood. Species code: vire. Stratum: understory. Native. Conservation status: Least concern. 

Deciduous shrubs up to 4 m, bark reddish to grayish brown, twigs slender, hairless or slightly pubescent; leaves simple, opposite, 3-8 cm long, ovate to elliptic margin coarsely serrate, shiny dark green above, finely pubescent underside, hair confined to veins axils; flowers small, white appearing in flat topped clusters 3-11 cm wide; drupes subglobose to ellipsoid, 6-8 mm, blue-black, occurring in clusters. Rare through the plot, growing in dry areas.

![text](maps_figures_tables/ch_3_distribution_maps/vire.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/viburnum_recognitum_map.html){width=75%}

## Annonaceae
### *Asimina triloba*	(L.) Dunal {-#Asimina-triloba}
Common name: Pawpaw, Common Pawpaw. Species code: astr. Stratum: understory. Native. Conservation status: Least concern.

Shrubs or trees up to 15 m, bark brown, smooth; leaves simple, alternate, 10-35 cm long, obovate-oblong to lanceolate, acute tip, glabrous above, pubescent below; flowers 2-4 cm wide, dark purple to brown; fruit green berries 3-5 cm large, pulpy, edible, resembling a green mango. Growing in semi-wet areas in the plot, evident clonal patch distribution.

![text](maps_figures_tables/ch_3_distribution_maps/astr.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/asimina_triloba_map.html){width=75%}

## Aquifoliaceae
### *Ilex verticillata* (L.) A. Gray {-#Ilex-verticillata}
Common name: Winterberry. Species code: ilve. Stratum: understory. Native. Conservation status: Least concern.

Shrubs up to 8 m, rarely resembling a tree, stems glabrous or pubescent; leaves simple, alternate, 2-10 cm long, lanceolate to round-ovate to elliptic, lustrous above, pubescent below, margin serrate; very small flowers growing as clusters at the branch base, flowers white; drupes globose, small 5-7 mm, bright red to yellow. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/ilve.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/ilex_verticillata_map.html){width=75%}

## Berberidaceae
### *Berberis thunbergii* DC. {-#Berberis-thunbergii}
Common name: Japanese Barberry. Species code: beth. Stratum: understory. Introduced (exotic, highly invasive). Conservation status: Least concern.

Shrubs up to 2 m, compact, densely branched with thorny stems, bark gray-brown, finely shredded, twigs slender, angled and zigzagged; leaves simple, alternate, 5-30 mm long, spatulate to obovate; flowers solitary or in small clusters, pale yellow, berries ellipsoid to globose, 6-8 mm, showy red. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/beth.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/berberis_thunbergii_map.html){width=75%}

## Betulaceae
### *Carpinus caroliniana* Walt. {-#Carpinus-caroliniana}
Common name: American Hornbeam, Ironwood, Musclewood. Species code: caca. Stratum: understory. Native. Conservation status: Least concern.

Small tree or shrub up to 12 m, trunks with irregular, longitudinal ridges, bark smooth and tight; leaves simple, alternate, 3-12 cm long, ovate to elliptic, margin double serrated; flowers small, solitary or in clusters, occurring in long pendulous catkins 2-5 cm long, petals light yellow-green; fruit small nutlet covered by a 3-lobed leafy bract. Abundant in wet areas and inside the deer exclosure.

![text](maps_figures_tables/ch_3_distribution_maps/caca.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/carpinus_caroliniana_map.html){width=75%}

###	*Corylus americana*	Walt. {-#Corylus-americana}
Common name: American Hazelnut, American Filbert. Species code: coam. Stratum: understory. Native. Conservation status: Least concern.

Shrubs up to 3.5 m, growing in colonies, twigs pubescent with small glands –lenticels- on bark; leaves simple, alternate, 7-15 cm long, broadly ovate to oval, margins finely double serrate; male flowers green-yellow catkins or female flowers inconspicuous with red styles of the pistils protruding, solitary or in clusters; fruits a small brown, globose nut, covered by leafy bracts, edible. Very rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/coam.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/corylus_americana_map.html){width=75%}

## Cannabaceae
### *Celtis occidentalis*	L. {-#Celtis-occidentalis}
Common name: Common Hackberry, Northern Hackberry. Species code: ceoc. Stratum: understory. Native. Conservation status: Least concern.

Tree or thick shrubs up to 25 m bark smooth and gray-brown when young, soon developing corky, irregular ridges at maturity, twigs slender, in zigzag, with numerous lenticels; leaves simple, alternate, 5-12 cm long, rounded or truncate 3-nerved, sometimes pubescent, margins serrate; flowers very small, 2-4 mm, light green; fruit rounded drupes, 7-14 mm in diameter, ellipsoid to globose, dark red to black. Infrequent through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/ceoc.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/celtis_occidentalis_map.html){width=75%}

## Caprifoliaceae
### *Lonicera maackii* (Rupr.) Maxim {-#Lonicera-maackii}
Common name: Amur Honeysuckle. Species code: loma. Stratum: understory. Introduced, highly invasive. Conservation status: Least concern.

Shrubs up to 5 m, multi-stemmed, bark with long, deep fissures, grayish brown, twigs hairless or slightly pubescent; leaves simple, opposite, 3.5-8.5 cm long, ovate to lance-ovate, 5-7 cm, slightly pubescent on veins underneath: flowers1.5-2.5 cm long, occurring in pairs, very fragrant, petals white becoming yellow; fruit a globose berry, 4-7 mm in diameter, dark red. Infrequent through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/loma.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/lonicera_maackii_map.html){width=75%}

## Celastracea
### *Euonymus alatus* (Thunb.) Sieb. {-#Euonymus-alatus}
Common name: Winged Euonymus, Burning Bush. Species code: eual. Stratum: understory. Introduced, highly invasive. Conservation status: Least concern.

Shrubs up to 2.5 m, bark gray to gray-brown, splitting revealing a lighter inner bark, twigs green, 4-angled with 2-4 conspicuous wings; leaves simple, opposite,6-8 cm long, elliptical to obovate, margin sharply serrate; flowers solitaries or in clusters of 3, very small, 6-8 mm wide, yellow-green; fruits a small 1-1.5 cm capsule, dark red. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/eual.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/euonymus_alatus_map.html){width=75%}

## Cornaceae
### *Cornus alternifolia*	L. f. {-#Cornus-alternifolia}
Common name: Alternate-leaf Dogwood, Pagoda Cornel, Pagoda Dogwood. Species code: coal. Stratum: understory. Native. Conservation status: Least concern.

Shrub or small tree up to 8 m, branches spreading young bark smooth, dark-green; leaves simple, alternate, 4-10 cm long, ovate to oblong to elliptic, pubescent and whitish below, crowded at the end of branchlets; flowers small, in cymes, flat topped, white petals flowers appearing before the leaves; fruits 4-7 mm, drupes, globose, blue. Rare through the plot (only 2 living individuals).

![text](maps_figures_tables/ch_3_distribution_maps/coal.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/cornus_alternifolia_map.html){width=75%}

### *Cornus florida* L. {-#Cornus-florida}
Common name: Flowering Dogwood. Species code: cofl. Stratum: understory. Native. Conservation status: Least concern.

Large shrub or small tree up to 10 m, bark reddish brown to black, branches wide; leaves simple, alternate, 6-13 cm long, ovate or elliptic to obovate, slightly pubescent and whitish below; flowers small, in cymes, flat topped, petals white, creamy or rarely pink subtended by bracts, flowers appearing before the leaves; fruits drupes 8-18 mm, subglobose, dark to bright red, in clusters of 5-6 drupes. Common through the plot although evidence of Anthracnose fungus is evident.

![text](maps_figures_tables/ch_3_distribution_maps/cofl.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/cornus_florida_map.html){width=75%}

## Ebenaceae
### *Diospyros virginiana* L. {-#Diospyros-virginiana}
Common name: Common Persimmon, American Persimmon. Species code: divi. Stratum: sub-canopy. Native. Conservation status: Least concern.

Trees up to 10 m, bark distinctive dark grey, deeply furrowed forming semi-square blocks; leaves simple, alternate, 5-15 cm long, ovate to oblong, slightly thick; flowers usually solitary and dioecious (separate male and female trees), yellow to greenish-yellow flowers, fragrant; fruits a globose berry 2-4 cm, green and astringent while ripening then pulpy and sweet when ripe, edible. Uncommon through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/divi.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/diospyros_virginiana_map.html){width=75%}

## Elaeagnaceae
### *Elaeagnus umbellata*	Thunb. {-#Elaeagnus-umbellata}
Common name: Autumn Olive. Species code: elum. Stratum: understory. Introduced, highly invasive. Conservation status: Least concern.

Shrubby trees up to 5 m; leaves simple, alternate, 3-8 cm long, elliptic to ovate, slightly undulate, shiny, silvery on undersides of leaves, pale green on top; flowers in clusters of 5-10, pale white to yellow and heavily fragrant; fruits a small berry 8-10 mm, bright red. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/elum.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/elaeagnus_umbellata_map.html){width=75%}

## Fabaceae
### *Cercis canadensis* L. {-#Cercis-canadensis}
Common name: Eastern Redbud. Species code: ceca. Stratum: understory. Native. Conservation status: Least concern.

Small trees up to 12 m, stem widely branched, bark with shallow grooves, twigs reddish-brown; leaves simple, alternate, 6-11 cm long, broad with heart shape base, pubescent below; flowers in clusters, growing on trunk, flowers 10-12 mm, reddish or pink; fruits a small legume (5-8 cm), conspicuously veined, flatten when dry. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/ceca.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/cercis_canadensis_map.html){width=75%}

### *Robinia pseudoacacia* L. {-#Robinia-pseudoacacia}
Common name: Black Locust. Species code: rops. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 30 m, trunk deeply furrowed, bark coarse, branches and twigs sometimes pubescent, thorns on stems and twigs, rugged bark; leaves compound, alternate, 15-30 cm long, leaflet elliptic to oblong, 1.5-6 cm long, with or without minute hair; flowers on drooping racemes with 3-20 flowers of 8-10 mm, white with yellow patches, fragrant; fruits a legume, flat purple-brown seed pods (to 13-15 cm long). Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/rops.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/robinia_pseudoacacia_map.html){width=75%}

## Fagaceae
### *Castanea dentata* (Marsh.) Borkh. {-#Castanea-dentata}
Common name: American Chestnut. Species code: cade. Stratum: canopy and sub-canopy. Native. Conservation status: Critically endangered.

Trees up to 30 m, bark dark, mostly smooth, shallowly fissured into broad in flat ridges in mature individuals, twigs chestnut brown, puberulent or glabrous; leaves simple, alternate, 10-30 cm long, elliptic to oblanceolate, coarsely serrate with forward pointing incurved teeth, glabrate to glabrous; inflorescences unisexual, flowers many, very small, pale green to cream colored, male flowers found tightly occurring along 10-15 cm catkins; females found near base of catkins (near twig); fruits a spiny covered husk splitting into 4-sections enclosing 2-5 nuts; nuts 18-25 mm diameter. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/cade.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/castanea_dentata_map.html){width=75%}

### *Fagus grandifolia*	Ehrh. {-#Fagus-grandifolia}
Common name: American Beech. Species code: fagr. Stratum: from understory to canopy. Native. Conservation status: Least concern.

Large trees up to 33 m, bark gray and smooth, twigs slender and glabrous, in zigzag with buds slender and sharply pointy (notable in the winter); leaves simple, alternate, 5-15 cm long, elliptic to ovate, sharply serrate, mostly glabrous; light brown leaves persistent through winter; inflorescences unisexual, flowers many, very small, yellow-cream colored, male flowers occurring along 5-10 cm catkins; female flowers found near base of catkins; fruits a spiny covered husk splitting into 3-sections 1-10 mm, enclosing 1 nut; nuts sharp with 3 angles. Abundant through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/fagr.jpg){width=50%}!
[text](maps_figures_tables/ch_3_US_range_maps/fagus_grandifolia_map.html){width=75%}

### *Quercus alba* L. {-#Quercus-alba}
Common name: White Oak. Species code: qual. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 38 m, bark light gray, flaky, with ridges or sometimes checked, twigs glabrous, red-brown; leaves simple, alternate, 5-25 cm long, oblong to obovate, with 7-10 rounded finger-like lobes, sinus depth varies from deep to shallow, margin smooth, glabrous above, pale to slightly white below; inflorescences unisexual, flowers many, male flowers yellow-green, occurring in slender catkins 5-10 cm; females flowers reddish-green and appear as very small single spikes; fruits an ovoid to oblong acorn 1.5-3 cm, cups bowl-shaped covering ¼ of the fruit, cup detach at maturity. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/qual.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/quercus_alba_map.html){width=75%}

### *Quercus coccinea* Muenchh. {-#Quercus-coccinea}
Common name: Scarlet Oak. Species code: quco. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 35 m, bark gray, with slightly paler ridges, inner bark reddish-brown, twigs glabrous; leaves simple, alternate, 7-20 cm long, ovate to obovate with 2-3 pairs of deeply cut lobes, margin smooth but with bristled tips, glabrous and shiny above with clusters of hair in vein axes below, bright red in the fall; inflorescences unisexual, flowers many, male flowers yellow-green, occurring in slender catkins 5-10 cm; females flowers reddish-green and appear as very small single spikes; fruits an ovoid acorn 1.3-2.7 cm, cups bowl-shaped covering ½ of the nut, scales tightly appressed, shiny. Very rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/quco.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/quercus_coccinea_map.html){width=75%}

### *Quercus falcata* Michx. {-#Quercus-falcata}
Common name: Southern Red Oak, Spanish Oak. Species code: qufa. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 35 m, bark very dark, shallowly furrowed, inner bark pale yellow, twigs pubescent; leaves simple, alternate, 8-20 cm long, ovate to obovate with a bell-shaped at the base with 1-3 pair of lobes, the primary-central lobes long and narrow, margin smooth but with bristled tips, shiny above and paler and fuzzy below; inflorescences unisexual, flowers many, male flowers yellow-green, occurring in catkins 5-10 cm; females flowers reddish born on short spikes; fruits a subglobose to ovoid acorn 1-1.5 cm, pubescent, cups thin and saucer-shaped covering ½ of the nut, with orange-brown scales tightly appressed. Very rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/qufa.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/quercus_falcata_map.html){width=75%}

### *Quercus michauxii* Nutt. {-#Quercus-michauxii}
Common name: Swamp Chestnut Oak, Basket Oak. Species code: qufa. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 40 m, bark pale gray, flaky or with ridges; leaves simple, alternate, 6-18 cm long, oval to obovate, margin with large round blunt ascending teeth, lamina dark green and shiny above and pubescent below; inflorescences unisexual, male flowers yellow-green, occurring in catkins 5-10 cm; females flowers green to reddish, very small in leaf axils; fruits an ovoid acorn 2.5-3.5 cm, cups bowl-shaped covering ½ of the nut, cups rough scaly. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/qumi.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/quercus_michauxii_map.html){width=75%}

### *Quercus montana* Willd. {-#Quercus-montana}
Common name: Chestnut Oak, Rock Chestnut Oak. Species code: qupr. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 35 m, bark dark, thick, tight and deeply furrowed, twigs hairless; leaves simple, alternate, 10-30 cm long, obovate to oblong or elliptic, margin crenate, shiny green above and fine pubescent and paler below; inflorescences unisexual, male flowers yellow-green, occurring in catkins 5-10 cm; females flowers reddish born on short spikes; fruits an ovoid acorn 2.5-4 cm, cups thin and funnel-shaped covering ½ of the nut. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/qupr.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/quercus_montana_map.html){width=75%}

### *Quercus rubra*	L. {-#Quercus-rubra}
Common name: Northern Red Oak. Species code: quru. Stratum: canopy to subcanopy. Native. Conservation status: Least concern.

Trees up to 40 m, bark smooth in young stems then broken into light gray, flat ridges separated by darker, broad and shallow furrows when maturing, inner bark reddish, twigs hairless and reddish brown; leaves simple, alternate, 10-24 cm long, widely obovate, with 3-5 pair of bristle-tipped lobes, sinuses extending 1/3 to 1/2 of the way to midvein; margin smooth, lamina dull green to blue-green and hairless above, often with small turf of hairs in the vein axils below; inflorescences unisexual, flowers many, male flowers yellow-green, borne in catkins 5-10 cm; females flowers born on short spikes; fruits an ovoid to ellipsoid acorn 2-3 cm, cups saucer-shaped covering 1/4 of the nut. Common and dominant through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/quru.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/quercus_rubra_map.html){width=75%}

### *Quercus velutina* Lam. {-#Quercus-velutina}
Common name: Black Oak. Species code: quve. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 35 m, bark very dark, rough and scaly, with low ridges, inner bark orange-yellow, twigs hairless; leaves simple, alternate, 10-25 cm long, ovate-oblong to obovate, with 2-3 pair of lobes, with sinuses from shallow to deep, lamina thick, dull green slightly pubescent above, star-shape pubescence below; inflorescences unisexual, flowers many, male flowers yellow-green, borne in catkins 5-10 cm; females flowers born on short spikes; fruits an ovoid acorn 1-2.5 cm, cups bowl shaped, covering ½ of the nut, scales pubescent. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/quve.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/quercus_velutina_map.html){width=75%}

## Hamamelidaceae
### *Hamamelis virginiana* L. var. virginiana {-#Hamamelis-virginiana}
Common name: Witch Hazel. Species code: havi. Stratum: canopy. Native. Conservation status: Least concern.

Shrub or small trees, 5-8 m tall, bark smooth, gray to gray-brown, twigs hairless or fine pubescent; leaves simple, alternate, 7-15 cm long, broadly ovate to obovate, inequilateral, coarsely lobed to toothed, lamina densely pubescent when young, hairless when mature, paler below; inflorescences in cluster of 3 flowers, pale yellow and very slender petals; fruits a capsule 1-1.5 cm, oblong to ovoid, densely pubescent. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/havi.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/hamamelis_virginiana_map.html){width=75%}

## Juglandaceae
### *Carya cordiformis* (Wangenh.) K. Koch {-#Carya-cordiformis}
Common name: Bitternut Hickory. Species code: caco. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 40 m, bark tight, shallowly ridged when mature, twigs slender with a bright sulfur-yellow terminal bud; leaves compound, alternate, 17-25 cm long, leaflets 7-11, lanceolate, margin serrate, dark green above, paler and pubescent beneath; inflorescences unisexual, male flowers yellow-green in drooping catkins with 3 hanging from one stalk, 7-10 cm long; female flowers short and solitary; fruits a subglobose to ovoid nut 2-3.5 cm, slightly flattened, splitting incomplete from the middle to the sharp-pointed tip; husk 4-winged above the middle, often dusty-yellow looking. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/caco.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/carya_cordiformis_map.html){width=75%}

### *Carya glabra* (P. Mill.) {-#Carya-glabra}
Common name: Pignut Hickory. Species code: cagl. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 45 m, bark tight, deeply furrowed at maturity, twigs slender; leaves compound, alternate, 20-30 cm long, leaflets 5 but sometimes 3-7, lanceolate and serrate margin, dark green above, paler and pubescent beneath; inflorescences unisexual, male flowers yellow-green in drooping catkins with 3 hanging from one stalk, 7-10 cm long; female flowers short and solitary, found in clusters at the end of branches; fruits a nut, pear-shaped to ellipsoid 2-4 cm, slightly flattened, husk thick usually splitting incomplete from the middle towards the base;. Very common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/cagl.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/carya_glabra_map.html){width=75%}

### *Carya ovalis* (Wangenh.) Sarg. {-#Carya-ovalis}
Common name: Red Hickory, Sweet Pignut Hickory. Species code: caovl. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 40 m, bark Initially smooth then deeply furrowed when mature, sometimes scaly at bottom or top, twigs slender; leaves compound, alternate, 20-30 cm long, leaflets mostly 7 (sometimes 5), lanceolate and serrate margin, dark green above, with scattered hair confine to veins beneath; inflorescences unisexual, male flowers yellow-green in drooping catkins with 3 hanging from one stalk, 7-10 cm long; female flowers short found in clusters at the end of branches; fruits an ellipsoid nut 2-4.5 cm in diameter, sutures sometimes winged, husk splitting almost complete from top to base. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/caovl.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/carya_glabra_map.html){width=75%}

### *Carya tomentosa* (Lam. ex Pior.) Nutt. {-#Carya-tomentosa}
Common name: Mockernut Hickory. Species code: cato. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 42 m, bark tight, eventually deeply furrowed, twigs stout; leaves compound, alternate, 20-35 cm long, leaflets 5-11, lanceolate to obovate, margin serrate, dark green above, paler and pubescent beneath, fragrant; inflorescences unisexual, male flowers yellow-green in drooping catkins with 3 hanging from one stalk; female flowers short and solitary, found in clusters at the end of branches; fruits a nut, obovoid to ellipsoid 3.5-5 cm diameter, husk thick usually splitting almost complete from top to base. Very common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/cato.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/carya_alba_map.html){width=75%}

### *Juglans cinerea* L. {-#Juglans-cinerea}
Common name: Butternut, White Walnut. Species code: juci. Stratum: canopy. Native. Conservation status: Endangered.

Trees up to 30 m, bark flat with gray ridges separated by dark fissures, developing diamond shaped patterns at maturity, twigs stout; leaf scars not notched on top; leaves compound, alternate, 30-60 cm long, leaflets 7-17, oblong-lanceolate, margin serrate, green above and paler beneath; inflorescences unisexual, male flowers densely arranged, yellow-green in drooping catkins 7-12 cm near apex of 2-nd year twigs; female flowers short, solitary or in groups at the end of the branch; fruits a nut, oblong (lemon shaped), 4-8 x 2.5-3 cm, husk thick, non-splitting. Very rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/juci.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/juglans_cinerea_map.html){width=75%}

### *Juglans nigra*	L. {-#Juglans-nigra}
Common name: Black Walnut. Species code: juni. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 35 m, bark thick, rough, deeply ridged with a rough diamond pattern, dark brown to nearly black, twigs stout; leaf scars notched on top; leaves compound, alternate, 30-60 cm long, leaflets 9-23, ovate-lanceolate, terminal leaflet usually missing, margin finely serrate, yellow-green to green above and paler below; inflorescences unisexual, dense male flowers clusters, yellow-green in drooping catkins 7-12 cm near apex of 2-nd year twigs; female flowers short, solitary or in groups at the end of the branch; fruits a nut, globose to subglobose, 3.5-8 cm diameter, husk thick, irregularly furrowed, non-splitting. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/juni.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/juglans_nigra_map.html){width=75%}

## Lauraceae
### *Lindera benzoin* (L.) Blume {-#Lindera-benzoin}
Common name: Spicebush. Species code: libe. Stratum: understory. Native. Conservation status: Least concern.

Shrub 1-5 m, multi-stemmed, aromatic, twigs slender with numerous dot- lenticels; leaves simple, alternate, 6-12 cm long, obovate to elliptical, strong and spicy odor when crushed, green above and slightly paler below; inflorescences 2-cm wide, flowers small, 5-7 mm, in small clusters appearing before the leaves, yellow petals; fruits a bright red drupe when ripe, 6-10 x 5-7 mm, ellipsoid. Very abundant through the southern part of the plot.

![text](maps_figures_tables/ch_3_distribution_maps/libe.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/lindera_benzoin_map.html){width=75%}

### *Sassafras albidum* (Nutt.) Nees {-#Sassafras-albidum}
Common name: Sassafras. Species code: saal. Stratum: Subcanopy to understory. Native. Conservation status: Least concern.

Shrub or trees to 30 m, bark becoming furrowed at maturity, twigs yellowish, hairless or pubescent when young; leaves simple, alternate, 5-18 cm long, obovate to elliptical, leaves may be unlobed or 2-5 lobed (resemble a mitten), green above and densely pubescent below, fragrant when crushed; flowers small, clustered axillary or at branch tips, 6-7 mm wide, yellow petals; fruits a dark shiny blue drupe, 6-13 mm, ellipsoid to ovoid, borne in a red cup attached to a red stalks. Common through the southern part of the plot.

![text](maps_figures_tables/ch_3_distribution_maps/saal.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/sassafras_albidum_map.html){width=75%}

## Magnoliaceae
### *Liriodendron tulipifera*	L. {-#Liriodendron-tulipifera}
Common name: Tulip-Poplar, Yellow Poplar, Tuliptree. Species code: litu. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 50 m, bark soft, light gray-green and smooth when young, developing flat-topped ridges white colored furrows in diamond shaped at maturity, twigs stout; leaves simple, alternate, 4-20 x 5-28 cm, mostly orbicular, 4-lobed with, lamina notched or flat at apex, shiny green above and paler below; flowers showy, large and solitary at end of branches, petals greenish yellow, orange at base; fruits an oblong (cone-like) aggregate of samaras, 5-6 cm long,  each samara is 1-winged, 2.5-3 cm long. Occurs widely through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/litu.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/liriodendron_tulipifera_map.html){width=75%}

## Malvaceae
### *Tilia americana* L. {-#Tilia-americana}
Common name: American Basswood. Species code: tiam. Stratum: subcanopy to understory. Native. Conservation status: Least concern.

Trees up to 25 m, bark smooth and gray-green when young becoming ridged and furrowed at maturity, twigs stout, in zigzag, green or red; leaves simple, alternate, 10-15 cm long, ovate to cordate, margin serrate, green above and densely pubescent below; flowers small, 10-15 mm, borne in clusters below a long, curving leafy wing (5-12 cm), petals pale yellow; fruits a round nutlet, 4-6 mm, covered with gray-brown hair, hanging in clusters. Only common in wet areas.

![text](maps_figures_tables/ch_3_distribution_maps/tiam.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/tilia_americana_map.html){width=75%}

## Nyssaceae
### *Nyssa sylvatica* Marsh. {-#Nyssa-sylvatica}
Common name: Black Gum, Sour Gum. Species code: nysy. Stratum: subcanopy to understory. Native. Conservation status: Least concern.

Trees up to 25 m, bark gray-brown and irregularly furrowed, becoming blocky at maturity, twigs stout, red-brown to red; leaves simple, alternate, very thing, 3-15 cm long, oblong to obovate, dark green shinny above and paler below; flowers very small, 10-15 mm, hanging in clusters, light green; fruits a drupe, 6-12 mm, ellipsoid to globose, hanging in clusters, blue to blue-black. Only common in wet areas.

![text](maps_figures_tables/ch_3_distribution_maps/nysy.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/nyssa_sylvatica_map.html){width=75%}

## Oleaceae
### *Chionanthus virginicus* L. {-#Chionanthus-virginicus}
Common name: Fringetree, Old Man's Beard. Species code: chvi. Stratum: understory. Native. Conservation status: Least concern.

Shrub or small tree up to 10 m, bark dark gray-brown, becoming furrowed with reddish scales at maturity, twigs stout, ashy-gray; leaves simple, opposite, 10-20 cm long, ovate to elliptical, green above and paler below; flowers very showy, 20-25 mm, borne in clusters, petals linear, white, very fragrant; fruits an ovoid drupe, 1-1.5 cm, dark-blue to black, hanging in clusters. Very uncommon in the plot.

![text](maps_figures_tables/ch_3_distribution_maps/chvi.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/chionanthus_virginicus_map.html){width=75%}

### *Fraxinus americana* L. {-#Fraxinus-americana}
Common name: White Ash. Species code: fram. Stratum: canopy. Native. Conservation status: Critically endangered.

Trees up to 40 m, bark gray furrowed or finely ridged, with interlacing corky ridges forming diamonds, twigs stout, gray to olive-green; leaves compound, opposite, 5-20 cm long, leaflets 5-9, oblong to ovate or obovate to lanceolate, rounded at base, mostly hairless, margin serrate to smooth, green above and slightly paler below; flowers small, light green to purplish, lacking petals, females occurring in loose panicles, males in tighter clusters; fruits a one-winged, dry, flattened samara, 3-4 cm, with a full, rounded, seed cavity, hanging in clusters. Abundant through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/fram.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/fraxinus_americana_map.html){width=75%}

### *Fraxinus nigra* Marsh. {-#Fraxinus-nigra}
Common name: Black Ash. Species code: frni. Stratum: canopy. Native. Conservation status: Critically endangered.

Trees up to 25 m, bark pale gray, flaky, scaly to corky at maturity, twigs stout, light brown to gray, opposite buds are nearly black; leaves compound, opposite, 7-12 cm long, leaflets 7-12, sessile, lanceolate to oblong, margin serrate, dark green above, lighter below with tufts of brown hair; flowers small, light green to purplish, lacking petals, females occurring in loose panicles, males in very tight rounded clusters; fruits a samara, one-winged, 2.5-4 cm, with an indistinct seed cavity, hanging in clusters. Sparse through the plot, grown only close to wet areas.

![text](maps_figures_tables/ch_3_distribution_maps/frni.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/fraxinus_nigra_map.html){width=75%}

### *Fraxinus pennsylvanica* Marsh. {-#Fraxinus-pennsylvanica}
Common name: Green Ash. Species code: frpe. Stratum: canopy. Native. Conservation status: Critically endangered.

Trees up to 25 m, bark dark gray to brown, furrowed, twigs stout, gray to green-brown, hairless or pubescent; leaves compound, opposite, 7-18 cm long, leaflets 5-11, ovate or oblong to elliptic, margin serrate or entire, green above and hairless to silky-pubescent below; flowers small, light green to purplish, lacking petals, females occurring in loose panicles, males in tight clusters; fruits a samara, one-winged, 2.5-4 cm, with a slender, thin seed cavity, hanging in clusters. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/frpe.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/fraxinus_pennsylvanica_map.html){width=75%}

## Paulowniaceae
### *Paulownia tomentosa*	(Thunb.) Sieb. & Zucc. ex Steud. {-#Paulownia-tomentosa}
Common name: Royal Paulownia, Princess Tree, Empress Tree. Species code: pato. Stratum: Canopy. Introduced. Conservation status: Least concern.

Trees up to 20 m, bark dark to brownish-gray, with shallow fissures, twigs stout, light brown with prominent white lenticels; leaves simple, opposite, 10-30 cm long, broadly ovate with a heart shape base, margin entire, green above and paler below, typically velvety; inflorescences in clusters, flowers large, 5-7 cm, violet to light purple with yellow stripes within, very fragrant; fruits an oval capsule, 3-4 cm, woody with minute and abundant seeds. Uncommon through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/pato.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/paulownia_tomentosa_map.html){width=75%}

## Pinaceae
### *Pinus pungens*	Lamb. {-#Pinus-pungens}
Common name: Table-Mountain Pine. Species code: pipu. Stratum: subcanopy. Native.
Conservation status: Least concern.

Trees up to 20 m, bark nearly smooth to flaky, in plates; leaves 3-7 cm, 2 (3) per fascicle; females cones 5-9 cm, conic-ovoid, 3-8 mm stout spines.

![text](maps_figures_tables/ch_3_distribution_maps/pipu.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/pinus_pungens_map.html){width=75%}

### *Pinus strobus* L. {-#Pinus-strobus}
Common name: Eastern White Pine. Species code: pist. Stratum: subcanopy. Native. Conservation status: Least concern.

Trees up to 50 m, rarely more than 60 m, bark and branches dark gray and smooth when young thick and rectangle blocks on mature trees; leaves 5-13 cm, 5 needles per fascicle, pale green; female cones 6-25 cm, slender, curved, spines lacking.

![text](maps_figures_tables/ch_3_distribution_maps/pist.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/pinus_strobus_map.html){width=75%}

### *Pinus virginiana* P. Mill.	{-#Pinus-virginiana}
Common name: Virginia Pine. Species code: pivi. Stratum: subcanopy. Native. Conservation status: Least concern.

Trees up to 20 m, rarely up to 30 m, bark thin and scaly with red-brown fissures; lower branches hold longer than other Pinus; leaves 2-13 cm, needles short, slender, 2 per fascicle, twisted; female cones 3-7 cm, ovoid, with curved spines, cones persistent.

![text](maps_figures_tables/ch_3_distribution_maps/pivi.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/pinus_virginiana_map.html){width=75%}

## Platanaceae
### *Platanus occidentalis* L. {-#Platanus-occidentalis}
Common name: Sycamore, American Sycamore. Species code: ploc. Stratum: canopy. Native. Conservation status: Least concern.

Trees up to 40 m, bark pale gray-green to white, gray-brown and scaly at maturity, twigs in zigzag, orange-brown; leaves simple, alternate, 10-20 cm wide, broadly ovate with a truncate base, palmately veined, with 3-5 broad lobes, margins coarsely toothed, green above and paler and slightly pubescent below; inflorescences solitary, globose, 1-4 cm diameter, male and female flowers very small, 2-3 mm, light green; fruits a spherical cluster of achenes, 7-9 mm, borne on a 7-15 cm stalk. Rare through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/ploc.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/platanus_occidentalis_map.html){width=75%}

## Rosaceae
### *Amelanchier arborea*	(Michx. f.) Fern. {-#Amelanchier-arborea}
Common name: Downy Serviceberry. Species code: amar. Stratum: understory. Native. Conservation status: Least concern.

Shrubs or small trees up to 10 m, bark smooth when young, ashy-gray with darker stripes, becoming rough with long vertical splits at maturity, twigs slender, flexible, red-brown to gray, with very short hair when young; leaves simple, alternate, 4-12 cm long, elliptic or obovate, mostly rounded at base, margins finely serrate, green above and paler below, slightly pubescent below when young; inflorescences racemose, pending, 3-5 cm long, showy white petals 2-2.5 cm long, occurring in drooping clusters; fruits a globose berry-like pome, 6-10 mm in diameter, dark purple to reddish purple or red, hanging in clusters. Abundant through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/amar.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/amelanchier_arborea_map.html){width=75%}

### *Crataegus pruinosa* (Wendl. f.) K. Koch var. pruinosa {-#Crataegus-pruinosa}
Common name: Frosted Hawthorn, Waxyfruit Hawthorn. Species code: crpr. Stratum: understory. Native. Conservation status: Least concern.

Shrubs or small trees up to 5 m, bark smooth and gray-brown when young, becoming darker and scaly at maturity, twigs slender, gray, growing a 2-2.5 cm long thorn at random intervals; leaves simple, alternate, 3-6 cm long, ovate to deltoid, sometimes deeply lobed, born compactly in clusters of 2-3 leaves, margins sharply serrate, dark green to blue-green above and paler below, hairless; flowers small, 5-25 mm in diameter, growing in groups of 5-10, erect, white; fruits a small pome, 5-6 mm in diameter, yellow to red, hanging in short clusters. Rare in the plot.

![text](maps_figures_tables/ch_3_distribution_maps/crpr.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/crataegus_pruinosa_map.html){width=75%}

### *Prunus avium* (L.) L. {-#Prunus-avium}
Common name: Sweet Cherry, Bird Cherry. Species code: prav. Stratum: subcanopy to understory. Introduced. Conservation status: Least concern.

Trees up to 20 m, bark reddish to brown, with prominent, long horizontal lenticels, often peels, branches not thorny, twigs irregular, textured, with a bitter almond taste; leaves simple, alternate, 7-15 cm long, ovate to obovate, margin double serrate, green above and paler below with two conspicuous red glands on petiole; inflorescences crowded with 3-5 flowers, flowers showy, 2-3 cm diameter, white; fruits a red/orange drupe, 1.5-2.5 cm, borne in clusters of 2-3. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/prav.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/prunus_avium_map.html){width=75%}

### *Prunus persica* (L.) Batsch {-#Prunus-persica}
Common name: Peach. Species code: prpe. Stratum: understory. Introduced. Conservation status: Least concern.

Trees up to 10 m, bark reddish brown, becoming scaly at maturity, branches not thorny, twigs irregular, red or green; leaves simple, alternate, 8-15 cm long, lanceolate or oblanceolate, margin finely serrate, shiny dark green above and paler below; flowers solitary or in clusters, flowers showy, 2.5-4 cm wide, pink to lavender; fruits a drupe, 5-9.5 cm, subglobose, fuzzy, yellow and red. Only one specimen in the plot.

![text](maps_figures_tables/ch_3_distribution_maps/prpe.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/prunus_persica_map.html){width=75%}

### *Prunus serotina* Ehrh. var serotina {-#Prunus-serotina}
Common name: Black Cherry, Wild Black Cherry. Species code: prse. Stratum: understory. Native. Conservation status: Least concern.

Trees up to 30 m, bark smooth when young with numerous horizontal lenticels, dark to nearly black, breaking into small plates and becoming scaly at maturity, branches not thorny, twigs slender, reddish brown; leaves simple, alternate, 6-15 cm long, lanceolate or oblong, margin finely serrate, dark green and shiny above and paler below with dense brown minute hair along the midrib; inflorescences a hanging raceme, 10-16 cm long, flowers small, 7-13 mm wide, white; fruits a small drupe, 0.7-1.2 cm, globose, red becoming purple-black or black. Common thought the plot.

![text](maps_figures_tables/ch_3_distribution_maps/prse.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/prunus_serotina_map.html){width=75%}

### *Rosa multiflora* Thunb. ex Murr. {-#Rose-multiflora}
Common name: Multiflora Rose. Species code: romu. Stratum: understory. Introduced, highly invasive. Conservation status: Least concern.

Shrubs up to 3 m, arching or climbing, stems glabrous with prickles curved, flattened, broad-based; leaflets 5-11 obovate to oblong or elliptic, acute to slightly acuminate, serrate, glabrous above, pubescent or hairless underneath; inflorescences paniculate, pyramidal; adnate to petioles; flowers small, petals 1-2.5 cm, white, red, or pink; fruits a small fleshy ‘hip’ (6-12 mm), ellipsoids, red. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/romu.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/rosa_multiflora_map.html){width=75%}

### *Rubus allegheniensis* Porter {-#Rubus-alleghiensis}
Common name: Allegheny Blackberry. Species code: rual. Stratum: understory. Native. Conservation status: Least concern.

Shrubs up to 3 m, stems erect or highly arching, rigid or angled when young, hairless, pubescence or with minute glands, usually armed with straight prickles; leaves  3- or 5-foliate, soft and short pubescent beneath; leaflets ovate to ovate-oblong, lateral leaflets narrower, terminal leaflets up to 20 cm; inflorescences racemiform, commonly elongate, multi flowered, flowers white; fruits a drupe, globose, 2.5 x 1.5 cm, black. Common through the plot.

![text](maps_figures_tables/ch_3_distribution_maps/rual.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/rubus_allegheniensis_map.html){width=75%}

### *Rubus pensilvanicus*	Poir. {-#Rubus-pensilvanicus}
Common name: Pennsylvania Blackberry. Species code: rupe. Stratum: understory. Native. Conservation status: Least concern.

Shrubs up to 3 m, stems erect or ascending, 4-sided, glabrous or finely pubescent, purple when mature; leaves 3- or 5-foliate; leaflets oblong or oblong-lanceolate to ovate, serrate or doubly serrate, terminal leaflets up to 20 cm; petals 1.2-2.5 mm, white; fruits a small drupelet, 1-3 x 0.9-1.5 cm, globose to thick-cylindric, black.

![text](maps_figures_tables/ch_3_distribution_maps/rupe.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/rubus_pensilvanicus_map.html){width=75%}

### *Rubus phoenicolasius* Maxim. {-#Rubus-phoenicolasius}
Common name: Wineberry. Species code: ruph. Stratum: understory. Introduced, highly invasive. Conservation status: Least concern.

Shrubs up to 2 m, stems arching, not angled; leaves 3-foliate, densely white-tomentose beneath; leaflets narrowly to broadly ovate, coarsely serrate, terminal leaflets 5-8 cm; petals 0.9-1.1 cm, pink or rose; fruits a small drupelet, 1-1.5 cm long and wide, purplish red.

![text](maps_figures_tables/ch_3_distribution_maps/ruph.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/rubus_phoenicolasius_map.html){width=75%}

## Sapindaceae
### *Acer negundo* L. var negundo {-#Acer-negundo}
Common name: Eastern Boxelder. Species code: acne. Stratum: understory to subcanopy. Native. Conservation status: Least concern.

Trees up to 25 m, bark pale gray, becoming fissured throughout maturity; twigs glabrous and glossy green; leaves compound, leaflets 3-7 (-9), 4-15 cm long and up to 11 cm wide, ovate to elliptic or obovate, irregularly serrate or lobed, pubescent to hairless beneath; buds white, fuzzy, encapsulated by petiole base; flowers minute, male flowers in clusters, female flowers in narrow drooping racemes, yellow to brownish; fruits a double samara, 2-5 cm.

![text](maps_figures_tables/ch_3_leaf/acne_172071_2_edit.jpg)
![text](maps_figures_tables/ch_3_distribution_maps/acne.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/Acer_negundo_map.html){width=75%}

### *Acer platanoides* L. {-#Acer-platanoides}
Common name: Norway Maple. Species code: acpl. Stratum: subcanopy to understory. Introduced. Conservation status: Least concern.

Trees up to 30 m; bark tight with interlacing, diamondlike pattern; leaves simple, shallow to deeply 3-5 (-7) lobed, 8-16 x 10-18 cm, glabrous, teeth few, irregular, sharp; erect inflorescences of 15-20 flowers, minute, yellow to pale-green; fruits a double samara, 3.5-5 cm.

![text](maps_figures_tables/ch_3_distribution_maps/acpl.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/Acer_platanoides_map.html){width=75%}

### *Acer rubrum*	L. {-#Acer-rubrum}
Common name: Red Maple. Species code: acru. Stratum: understory. Native. Conservation status: Least concern.

Trees up to 40 m, bark gray and smooth when young, mature trunks rough and platelike, twigs and buds reddish; leaves 5-15 x 3-18 cm, 3-5 lobed, margin coarsely serrate or irregularly dentate, red petioles; inflorescences semi globose, male flowers sessile, and female flowers short stalked, born in hanging clusters; petals red; fruits a double samara, 1-3 cm.

![text](maps_figures_tables/ch_3_distribution_maps/acru.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/Acer_rubrum_map.html){width=75%}

## Simaroubaceae
### *Ailanthus altissima* (P. Miller) Swingle {-#Ailanthus-altissima}
Common name: Tree-of-Heaven. Species code: aial. Stratum: canopy. Introduced. Conservation status: Least concern.

Trees up to 25 m, bark light brown to gray, turning darker gray and rough at maturity, twigs stout, yellow to red-brown, with fine-short hairs when young; leaves compound, alternate, 30-90 cm long, leaflets 11-41, oblong to lanceolate, pointed at the tip with large, glandular teeth near the base, 8-18 cm long, margin entire, green above and below; inflorescences pyramidal, 10-30 cm, flowers small, 5-6 cm wide, greenish to yellow-green, in long 15-30 cm clusters, males have a strong odor; fruits an oblong, twisted samara, 2.4 cm long, hanging in clusters.

![text](maps_figures_tables/ch_3_distribution_maps/aial.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/ailanthus_altissima_map.html){width=75%}

## Ulmaceae
### *Ulmus americana*	L. {-#Ulmus-americana}
Common name: American Elm. Species code: ulam. Stratum: subcanopy. Native. Conservation status: Least concern.

Trees 20-40 m, dichotomously forked, arching, vase-shaped, bark gray and flaky with whitish and brown cross sections; twigs drooping, glabrous or slightly hairy; buds brown, glabrous to lightly hairy; leaves 5-18 x 4-9 cm, ovate-oblong to obovate or oval, abruptly pointed, margin double serrate; flowers minute, green to pinkish-brown in compact semi globose clusters, fruit a single elliptical to ellipsoid samara, deeply notched at apex, 8-12 mm, ciliate margins.

![text](maps_figures_tables/ch_3_distribution_maps/ulam.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/ulmus_americana_map.html){width=75%}

### *Ulmus rubra*	Muhl. {-#Ulmus-rubra}
Common name: Red Elm, Slippery Elm. Species code: ulru. Stratum: understory. Native. Conservation status: Least concern.

Trees up to 15-30 m, arching, bark gray and rough on outer surface, reddish wood, twigs stout; leaves 10-20 x 5-9 cm, oblong to obovate, very rough above, margins finely toothed; flowers minute, in born in subglobose clusters pink or red, densely ciliate; fruit a single nearly orbicular samara, 1.5-2 cm, slightly pubescent or glabrous. In the US, populations of *Ulmus* spp. has decline over the past 40 years due to Dutch Elm Disease fungi (Ophiostoma ulmi).

![text](maps_figures_tables/ch_3_distribution_maps/ulru.jpg){width=50%}
![text](maps_figures_tables/ch_3_US_range_maps/ulmus_rubra_map.html){width=75%}

<!--chapter:end:03-Species-Description.Rmd-->

# Community and Ecosystem Ecology

Forests make up 45% of terrestrial carbon [@bonan_forests_2008; @stovall_assessing_2018]. The amount of carbon held in by trees can have a negative impact due to the emissions that are released into the air caused by deforestation. The rise in carbon emissions is attributed to the rise in tree mortality.

<!--chapter:end:04-Community-and-Ecosystem-Ecology.Rmd-->

# Biotic Drivers of Change

## Invasive Plants

This initiative started as part of the regional effort for the study of the long-term effect of white-tail deer on the dispersion of invasive plants across the mid-Atlantic forest (Shen, 2016). 
The surveys have been conducted in 2011, 2012, 2014 and 2018. We aim to record the number or coverage of invasive plants present at 640 unique 20x20 m quadrats within the 26.4 ha plot. For woody plants, we count the individual stems and for exotic herbaceous species we visually estimate their cover (in %) within a quadrat.

<!--chapter:end:05-Biotic-Drivers-Of-Change.Rmd-->

# Methods

This survey was conducted in the Center for Tropical Forest Science-Forest Global Earth Observatory's (CTFS-ForestGEO) dynamic forest plot. The plot, itself, is located at the Smithsonian Conservation Biology Institute in Front Royal, Virginia, USA. SCBI is 3.1 miles (5 kilometers) from the Shenandoah National Park and roughly 80 miles (~130 kilometers) from the Smithsonian National Zoological Park.

The research was conducted by a team of interns under the labs of William McShea, Ph.D and Kristina Anderson-Teixeira, Ph.D. On average, 3.3 people/day participated in the census with 3.7 field days/week. A single person logged an average of 29 hours/week, resulting in 97 hours/week being done. Roughly 3,200 total amount of work hours - including data collection, review, entry, and analysis - was completed.

The survey team utilized methods set by the Center for Tropical Forest Science - Forest Global Earth Observatory, also known as CTFS-ForestGEO [condit_tropical_1998; @gonzalezakre_patterns_2016]. Measurements of old, new multi-, and new plant stems are either measured or recruited at greater than or equal to 1 cm DBH [@bourg_initial_2013]. "Old stems" are considered to be stems that existed in the previous census. These measurements also include old multistemed species. "New multi stems" are new stems that have grown on the same woody species as the old stem. Once their information is recorded, each stem is given a different colored wire/combination of colored wires to signify which stem it is. "New plant stems" are the new growth of species that have not been tagged in the plot yet. "Tagging" is when a woody species is marked with a specific identification number. These numbers are compiled within a spread sheet and logged into the global CTFS database.

With the recruitment of new growth comes the acknowledgement of stem death. According to @gonzalezakre_patterns_2016, dead stems are considered to be dead due to the following criteria: (1) stems that are broken below DBH; (2) loosened or detached bark; (3) lack of development in regards to flower or leaf buds and; (4) signs of pests or pathogens such as fungus and insects.

Four hectares of the plot is located in a fenced in area designed to keep *Odocoileus virginianus* (white-tailed deer) from entering the environment [@ramage_sapling_2017]. This fencing is locally known as the 'deer exclosure.'

<!--chapter:end:06-Methods.Rmd-->

# Contributions

**Peer-reviewed publications:**

*2019*

Chu, Chengjin; Lutz, James A.; Král, Kamil; Vrška, Tomáš; Yin, Xue; Myers, Jonathan A.; Abiem, Iveren; Alonso, Alfonso; Bourg, Norm; Burslem, David F.R.P.; Cao, Min; Chapman, Hazel; Condit, Richard; Fang, Suqin; Fischer, Gunter A.; Gao, Lianming; Hao, Zhanqin; Hau, Billy C.H.; He, Qing; Hector, Andrew; Hubbell, Stephen P.; Jiang, Mingxi; Jin, Guangze; Kenfack, David; Lai, Jiangshan; Li, Buhang; Li, Xiankun; Li, Yide; Lian, Juyu; Lin, Luxiang; Liu, Yankun; Liu, Yu; Luo, Yahuang; Ma, Keping; McShea, William; Memiaghe, Hervé; Mi, Xiangcheng; Ni, Ming; O'Brien, Michael J.; de Oliveira, Alexandre A.; Orwig, David A.; Parker, Geoffrey G.; Qiao, Xiujuan; Ren, Haibao; Reynolds, Glen; Sang, Weiguo; Shen, Guochun; Su, Zhiyao; Sui, Xinghua; Sun, I‐Fang; Tian, Songyan; Wang, Bin; Wang, Xihua; Wang, Xugao; Wang, Youshi; Weiblen, George D.; Wen, Shujun; Xi, Nianxun; Xiang, Wusheng; Xu, Han; Xu, Kun; Ye, Wanhui; Zhang, Bingwei; Zhang, Jiaxin; Zhang, Xiaotong; Zhang, Yingming; Zhu, Kai; Zimmerman, Jess; Storch, David; Baltzer, Jennifer L.; Anderson‐Teixeira, Kristina J.; Mittelbach, Gary G.; He, Fangliang. 2019. Direct and indirect effects of climate on richness drive the latitudinal diversity gradient in forest trees. Ecology Letters, 22:245-255. DOI:10.1111/ele.13175.

Helcoski, R., Tepley, A. J., McGarvey, J. C., Gonzalez-Akre, E., Meakem, V., Thompson, J. R., & Anderson-Teixeira, K. J. (2019). No significant increase in tree mortality following coring in a temperate hardwood forest. Tree-Ring Research, 75(1), 67. https://doi.org/10.3959/1536-1098-75.1.67

Helcoski, R., Tepley, A. J., Pederson, N., McGarvey, J. C., Meakem, V., Herrmann, V., Thompson, J. R., & Anderson-Teixeira, K. J. (2019). Growing season moisture drives inter-annual variation in woody productivity of a temperate deciduous forest. New Phytologist, in press. DOI: 10.1111/nph.15906

*2018*

Lutz, J. A., T. J. Furniss†, D. J. Johnson, S. J. Davies, D. Allen, A. Alonso, K. Anderson-Teixeira, A. … N. A. Bourg, S. … W. J. McShea, 2018. Global importance of large-diameter trees. Global Ecology and Biogeography. doi: http://dx.doi.org/10.1111/geb.12747

Wang, X. T. Wiegand, K. J. Anderson-Teixeira, N. A. Bourg, Z. Hao, R. Howe, G. Jin, D. A. Orwig, M. J. Spasojevic, S. Wang, A. Wolf, J. A. Myers (2018). Ecological drivers of spatial community dissimilarity, species replacement, and species nestedness across temperate forests. Global Ecology and Biogeography, DOI: 10.1111/geb.12719.

*2017*

AEL Stovall, HH Shugart. 2017.Improved Biomass Calibration and Validation With Terrestrial LiDAR: Implications for Future LiDAR and SAR Missions. IEEE Journal of Selected Topics in Applied Earth Observations and Remote Sensing, 1-11. doi: 10.1109/JSTARS.2018.2803110.

Bourg, N. A., McShea, W. J., Herrmann V, Steward, C. 2017. Interactive effects of deer exclusion and exotic plant removal on deciduous forest understory communities. AoB PLANTS, Volume 9, Issue 5, 1 September 2017, plx046, https://doi.org/10.1093/aobpla/plx046

Erickson, D. L., Reed, E., Ramachandran, P., Bourg, N. A., McShea, W. J., & Ottesen, A. (2017). Reconstructing a herbivore’s diet using a novel rbcL DNA mini-barcode for plants. AoB PLANTS, 9(3). doi.org/10.1093/aobpla/plx015

Meakem, V, Tepley, AJ, Gonzalez-Akre, EB, Herrmann V, Muller-Landau, HC, Wright, SJ, Hubbell, SP, Condit, R, Anderson-Teixeira, KJ. (2017) Role of tree size in moist tropical forest carbon cycling and water deficit responses. New Phytologist. doi: 10.1111/nph.14633.

Ramage, B.S., Johnson, D.J., Gonzalez-Akre, E., McShea, W.J., Anderson-Teixeira, K.J., Bourg, N.A., Clay, K. (2017) Sapling growth rates reveal conspecific negative density dependence in a temperate forest. Ecology and Evolution, 1-11. DOI: 10.1002/ece3.3298.

*2016*

Fisher, J. B., S. Sweeney, E. R. Brzostek, T. P. Evans, D. J. Johnson, J. A. Myers, N. A. Bourg, A. T. Wolf, R. W. Howe, and R. P. Phillips. 2016. Tree-mycorrhizal associations detected remotely from canopy spectral properties. Global Change Biology 22:2596–2607.

Gonzalez-Akre, E., V. Meakem, C.-Y. Eng, A. J. Tepley, N. A. Bourg, W. McShea, S. J. Davies, and K. Anderson-Teixeira. 2016. Patterns of tree mortality in a temperate deciduous forest derived from a large forest dynamics plot. Ecosphere 7:n/a–n/a.

Herrmann, V., S. M. McMahon, M. Detto, J. A. Lutz, S. J. Davies, C.-H. Chang-Yang, and K. J. Anderson-Teixeira. 2016. Tree Circumference Dynamics in Four Forests Characterized Using Automated Dendrometer Bands. PloS one 11:e0169020.

Král, K., J. Shue, T. Vrška, E. B. Gonzalez-Akre, G. G. Parker, W. J. McShea, and S. M. McMahon. 2016. Fine-scale patch mosaic of developmental stages in Northeast American secondary temperate forests: the European perspective. European Journal of Forest Research 135:981–996.

Shen, X., N. A. Bourg, W. J. McShea, and B. L. Turner. 2016. Long-Term Effects of White-Tailed Deer Exclusion on the Invasion of Exotic Plants: A Case Study in a Mid-Atlantic Temperate Forest. PLOS ONE 11:e0151825.

*2015*

Anderson-Teixeira, K. J., S. J. Davies, A. C. Bennett, E. B. Gonzalez-Akre, H. C. Muller-Landau, S. Joseph Wright, K. Abu Salim, A. M. Almeyda Zambrano, A. Alonso, J. L. Baltzer, Y. Basset, N. A. Bourg, E. N. Broadbent, W. Y. Brockelman, S. Bunyavejchewin, D. F. R. P. Burslem, N. Butt, M. Cao, D. Cardenas, G. B. Chuyong, K. Clay, S. Cordell, H. S. Dattaraja, X. Deng, M. Detto, X. Du, A. Duque, D. L. Erikson, C. E. N. Ewango, G. A. Fischer, C. Fletcher, R. B. Foster, C. P. Giardina, G. S. Gilbert, N. Gunatilleke, S. Gunatilleke, Z. Hao, W. W. Hargrove, T. B. Hart, B. C. H. Hau, F. He, F. M. Hoffman, R. W. Howe, S. P. Hubbell, F. M. Inman-Narahari, P. A. Jansen, M. Jiang, D. J. Johnson, M. Kanzaki, A. R. Kassim, D. Kenfack, S. Kibet, M. F. Kinnaird, L. Korte, K. Kral, J. Kumar, A. J. Larson, Y. Li, X. Li, S. Liu, S. K. Y. Lum, J. A. Lutz, K. Ma, D. M. Maddalena, J.-R. Makana, Y. Malhi, T. Marthews, R. Mat Serudin, S. M. McMahon, W. J. McShea, H. R. Memiaghe, X. Mi, T. Mizuno, M. Morecroft, J. A. Myers, V. Novotny, A. A. de Oliveira, P. S. Ong, D. A. Orwig, R. Ostertag, J. den Ouden, G. G. Parker, R. P. Phillips, L. Sack, M. N. Sainge, W. Sang, K. Sri-ngernyuang, R. Sukumar, I.-F. Sun, W. Sungpalee, H. S. Suresh, S. Tan, S. C. Thomas, D. W. Thomas, J. Thompson, B. L. Turner, M. Uriarte, R. Valencia, M. I. Vallejo, A. Vicentini, T. Vrška, X. Wang, X. Wang, G. Weiblen, A. Wolf, H. Xu, S. Yap, and J. Zimmerman. 2015a. CTFS-ForestGEO: a worldwide network monitoring forests in an era of global change. Global Change Biology 21:528–549.

Anderson-Teixeira, K. J., J. C. McGarvey, H. C. Muller-Landau, J. Y. Park, E. B. Gonzalez-Akre, V. Herrmann, A. C. Bennett, C. V. So, N. A. Bourg, J. R. Thompson, S. M. McMahon, and W. J. McShea. 2015b. Size-related scaling of tree form and function in a mixed-age forest. Functional Ecology 29:1587–1602.

Pei, N., D. L. Erickson, B. Chen, X. Ge, X. Mi, N. G. Swenson, J.-L. Zhang, F. A. Jones, C.-L. Huang, W. Ye, Z. Hao, C.-F. Hsieh, S. Lum, N. A. Bourg, J. D. Parker, J. K. Zimmerman, W. J. McShea, I. C. Lopez, I.-F. Sun, S. J. Davies, K. Ma, and W. J. Kress. 2015. Closely-related taxa influence woody species discrimination via DNA barcoding: evidence from global forest dynamics plots. Scientific Reports 5.

*2014*

Erickson, D. L., F. A. Jones, N. G. Swenson, N. Pei, N. A. Bourg, W. Chen, S. J. Davies, X. Ge, Z. Hao, R. W. Howe, C.-L. Huang, A. J. Larson, S. K. Y. Lum, J. A. Lutz, K. Ma, M. Meegaskumbura, X. Mi, J. D. Parker, I. Fang-Sun, S. J. Wright, A. T. Wolf, W. Ye, D. Xing, J. K. Zimmerman, and W. J. Kress. 2014. Comparative evolutionary diversity and phylogenetic structure across multiple forest dynamics plots: a mega-phylogeny approach. Frontiers in Genetics 5.

Johnson, D. J., N. A. Bourg, R. Howe, W. J. McShea, A. Wolf, and K. Clay. 2014. Conspecific negative density-dependent mortality and the structure of temperate forests. Ecology 95:2493–2503.

Réjou-Méchain, M., H. C. Muller-Landau, M. Detto, S. C. Thomas, T. Le Toan, S. S. Saatchi, J. S. Barreto-Silva, N. A. Bourg, S. Bunyavejchewin, N. Butt, W. Y. Brockelman, M. Cao, D. Cárdenas, J.-M. Chiang, G. B. Chuyong, K. Clay, R. Condit, H. S. Dattaraja, S. J. Davies, A. Duque, S. Esufali, C. Ewango, R. H. S. Fernando, C. D. Fletcher, I. A. U. N. Gunatilleke, Z. Hao, K. E. Harms, T. B. Hart, B. Hérault, R. W. Howe, S. P. Hubbell, D. J. Johnson, D. Kenfack, A. J. Larson, L. Lin, Y. Lin, J. A. Lutz, J.-R. Makana, Y. Malhi, T. R. Marthews, R. W. McEwan, S. M. McMahon, W. J. McShea, R. Muscarella, A. Nathalang, N. S. M. Noor, C. J. Nytch, A. A. Oliveira, R. P. Phillips, N. Pongpattananurak, R. Punchi-Manage, R. Salim, J. Schurman, R. Sukumar, H. S. Suresh, U. Suwanvecho, D. W. Thomas, J. Thompson, M. Uríarte, R. Valencia, A. Vicentini, A. T. Wolf, S. Yap, Z. Yuan, C. E. Zartman, J. K. Zimmerman, and J. Chave. 2014. Local spatial structure of forest biomass and its consequences for remote sensing of carbon stocks. Biogeosciences 11:6827–6840.

Yakimov, B. N., D. B. Gelashvili, L. A. Solntsev, D. I. Iudin, and G. S. Rozenberg. 2014. Nonconcavity of mass exponents’ spectrum in multifractal analysis of community spatial structure: The problem and possible solutions. Ecological Complexity 20:11–22.

*2013

Bourg, N. A., W. J. McShea, J. R. Thompson, J. C. McGarvey, and X. Shen. 2013. Initial census, woody seedling, seed rain, and stand structure data for the SCBI SIGEO Large Forest Dynamics Plot. Ecology 94:2111–2112.

Chisholm, R. A., H. C. Muller-Landau, K. Abdul Rahman, D. P. Bebber, Y. Bin, S. A. Bohlman, N. A. Bourg, J. Brinks, S. Bunyavejchewin, N. Butt, H. Cao, M. Cao, D. Cárdenas, L.-W. Chang, J.-M. Chiang, G. Chuyong, R. Condit, H. S. Dattaraja, S. Davies, A. Duque, C. Fletcher, N. Gunatilleke, S. Gunatilleke, Z. Hao, R. D. Harrison, R. Howe, C.-F. Hsieh, S. P. Hubbell, A. Itoh, D. Kenfack, S. Kiratiprayoon, A. J. Larson, J. Lian, D. Lin, H. Liu, J. A. Lutz, K. Ma, Y. Malhi, S. McMahon, W. McShea, M. Meegaskumbura, S. Mohd. Razman, M. D. Morecroft, C. J. Nytch, A. Oliveira, G. G. Parker, S. Pulla, R. Punchi-Manage, H. Romero-Saltos, W. Sang, J. Schurman, S.-H. Su, R. Sukumar, I.-F. Sun, H. S. Suresh, S. Tan, D. Thomas, S. Thomas, J. Thompson, R. Valencia, A. Wolf, S. Yap, W. Ye, Z. Yuan, and J. K. Zimmerman. 2013. Scale-dependent relationships between tree species richness and ecosystem function in forests. Journal of Ecology 101:1214–1224.

Holm, J. A., J. R. Thompson, W. J. McShea, and N. A. Bourg. 2013. Interactive effects of chronic deer browsing and canopy gap disturbance on forest successional dynamics. Ecosphere 4:1–23.

McGarvey, J. C., N. A. Bourg, J. R. Thompson, W. J. McShea, and X. Shen. 2013. Effects of Twenty Years of Deer Exclusion on Woody Vegetation at Three Life-History Stages in a Mid-Atlantic Temperate Deciduous Forest.

2012
Swenson, N. G., D. L. Erickson, X. Mi, N. A. Bourg, J. Forero-Montaña, X. Ge, R. Howe, J. K. Lake, X. Liu, K. Ma, N. Pei, J. Thompson, M. Uriarte, A. Wolf, S. J. Wright, W. Ye, J. Zhang, J. K. Zimmerman, and W. J. Kress. 2012. Phylogenetic and functional alpha and beta diversity in temperate and tropical tree communities. Ecology 93:S112–S125.

Data products

    Gonzalez-Akre EB, Meakem V, Eng CY, Tepley AJ, Bourg NA, McShea WJ, Davies SJ, Anderson-Teixeira KJ. 2016. Data from: Patterns of tree mortality in a temperate deciduous forest derived from a large forest dynamics plot. Dryad Digital Repository. doi:10.5061/dryad.v5h24

    Gonzalez-Akre EB, McShea WJ, Bourg NA, Anderson-Teixeira KJ. 2015. Leaf traits (SLA) for 56 woody species at the Smithsonian Conservation Biology Institute-ForestGEO Forest Dynamic Plot. Front Royal, Virginia. USA. [Data set]. Version 1.0. Plant Trait Global Dataset (www.try-db.org).

    Anderson-Teixeira KJ, McGarvey JC, Muller-Landau HC, Park JY, Gonzalez-Akre EB, Herrmann V, Bennett AC, So CV, Bourg NA, Thompson JR, McMahon SM, McShea WJ (2015) Data from: Size-related scaling of tree form and function in a mixed-age forest. Functional Ecology. Dryad Digital Repository. http://dx.doi.org/10.5061/dryad.6nc8c.

<!--chapter:end:07-Contributions.Rmd-->



# References {-}

<!--chapter:end:08-References.Rmd-->

