# Install from CRAN
install.packages("tidyverse")
install.packages("sf")
install.packages("giscoR")

setwd("C:/Users/aryaa/Desktop")
getwd()

path_to_my_datafiles <- "C:/Users/aryaa/Desktop/my_working_directory"
list.files(path = path_to_my_datafiles, 
        pattern = NULL,
     full.names = TRUE)

# 1. GET COUNTRY BORDERS
print("GET COUNTRY BORDERS")
get_country_borders <- function() {
    country_borders <- giscoR::gisco_get_countries(
        resolution = "3",
        country = "US"
    )

    return(country_borders)
}

country_borders <- get_country_borders()

# 2. GET BASINS
print("GET BASINS")
# https://data.hydrosheds.org/file/HydroBASINS/standard/hybas_sa_lev03_v1c.zip

get_basins <- function() {
    url <- "https://data.hydrosheds.org/file/HydroBASINS/standard/hybas_na_lev03_v1c.zip"
    file_name <- "hybas_na_lev03_v1c.zip"

    download.file(
        url = url,
        destfile = file_name,
        mode = "wb"
    )

    unzip(file_name)
}

get_basins()
