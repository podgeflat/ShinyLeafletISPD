server <- function(input,output, session){
  
  data <- reactive({
    x <- df
  })
  
  output$mymap <- renderLeaflet({
    df <- data()
    
    m <- leaflet(df)  %>% addProviderTiles("Esri.WorldImagery") %>% 
      addCircles(~Long.2, ~Lat, 
                 color = pal(df$Total_Years),
                 weight = 3, 
                 radius = ~(Total_Years) * 300, #include this line if you want bigger circles for longer records
                 popup=paste("Name:", df$Station.name,"<br>",
                             "Start Year:", df$Star_year, "<br>",
                             "End Year:", df$End_year, "<br>",
                             "Total Years:", df$Total_Years)) %>%
      addLegend(pal = pal, values = ~(Total_Years), group = "circles", position = "topleft") 
    
    m
  })
}