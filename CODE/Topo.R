## Code to calculate topographic distance between commune

# install package TopoDistance, Wang et al., 2020
install.packages("topoDistance")


# Package raster to use DEM data 
install.packages("raster")

install.packages("openxlsx")

install.packages("rlang")

install.packages("elevatr")


## Load packages

library(topoDistance)
library(raster)
library(openxlsx)
library(rlang)
library(elevatr)

# Load data file

data <- read.xlsx("DATA/data_patri_commune.xlsx",
                    sheet = 1,
                  colNames = TRUE)

# Load topo files

DEM_E30N20 <- raster("E:/Topographic/eu_dem_v11_E30N20.tif")
DEM_E40N20 <- raster("E:/Topographic//eu_dem_v11_E40N20.tif")

DEM <- merge(DEM_E30N20,DEM_E40N20,
             overlap = TRUE)

plot(test, col = terrain.colors(99))

xy <- matrix(ncol = 2, byrow = TRUE,
             c(6.714943, 45.379301, 
               6.158010, 44.604781))

colnames(xy) <- c("longitude", "latitude")

tdist <- topoDist(DEM_E40N20, xy, paths = TRUE)


DEM <- projectRaster(DEM_E30N20,
                     crs = crs(DEM_E30N20))

mt_wash <- data.frame(x = 6.714943, y = 45.379301)

get_elev_point(xy)
get_elev_point(locations = mt_wash,
               units = "meters",
               prj = "WGS84",
               src = "aws")

plot(Yosemite$DEM, col = terrain.colors(99))

