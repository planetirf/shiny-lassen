#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

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
body <- dashboardBody( tabItems(
    # First tab content
    tabItem(tabName = "dashboard",
            fluidRow(
                box(plotOutput("plot1", height = 250)),
                
                box(
                    title = "Controls",
                    sliderInput("slider", "Number of observations:", 1, 100, 50)
                )
            )
    ),
    
    # Second tab content
    tabItem(tabName = "widgets",
            h2("Widgets tab content"),
            ## First Row
            fluidRow(
                box(title = "box1")
            ),
            ## Second Row
            fluidRow(
                box(title = "row 2 box"),
                box(title = "row 2 box2"),
                box(title = "row 2 box3")
            )
    )
))



## BUILD UI
ui <- dashboardPage(header,sidebar,body)


# Define server logic required to draw a histogram
server <- function(input, output) {

 
}

# Run the application 
shinyApp(ui = ui, server = server)
