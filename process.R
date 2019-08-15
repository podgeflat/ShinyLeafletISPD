library(leaflet)

df <- read.csv("./StationListsISPDFiltered.csv", header=TRUE, sep=",")

df$Total_Years = df$End_year - df$Star_year #figure out the length of observation period by taking start year from end year

saveRDS(df, "./df.rds")



