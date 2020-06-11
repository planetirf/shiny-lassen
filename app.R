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
            box(title = "row 1 box")
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


## BUILD SERVER FUNCTION
server <- function(input, output) {
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}


## START APP
shinyApp(ui, server)
