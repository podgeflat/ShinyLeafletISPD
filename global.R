library(shiny)
library(leaflet)
library(dplyr)

df <- readRDS("./df.rds")
pal <- colorNumeric("YlOrRd", df$Total_Years)
