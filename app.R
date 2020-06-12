# app.R ##
library(shiny)
library(shinydashboard)

## HEADER
header <- dashboardHeader(title="Lassen Soils")


## SIDEBAR
sidebar <- dashboardSidebar(sidebarMenu(
  menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
  menuItem("Widgets", tabName = "widgets", icon = icon("th"))
))


## BODY
body <- dashboardBody( 
  img(src=df$box_img[1], width = "200"),
  
  ## Tabbed items
  tabItems(
  # First tab content
  tabItem(tabName = "dashboard"),
  
  # Second tab content
  tabItem(tabName = "widgets")
))



## BUILD UI
ui <- dashboardPage(header,sidebar,body)


## BUILD SERVER FUNCTION
server <- function(input, output, session) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)


