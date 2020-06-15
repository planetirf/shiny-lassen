# app.R ##
library(shiny)
library(shinydashboard)
library(tidyverse)

## HEADER
header <- dashboardHeader(title="Lassen Soils")


## SIDEBAR
sidebar <- dashboardSidebar(sidebarMenu( id = "sidebar",
  menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
  selectInput("boxId",
              label = "Choose Soil Box ID",
              choices = df$box_id)
))


## BODY
body <- dashboardBody( 
  tabItems(
  # First tab content
  tabItem(tabName = "dashboard",
          fluidRow(
            box(uiOutput("boxImg", width=2)),
            box(uiOutput("pitImg")),

          ),
          fluidRow(
            box(uiOutput("west"), width=3),
            box(uiOutput("north"), width=3),
            box(uiOutput("east"), width=3),
            box(uiOutput("south"), width=3),
            
          )
  ),
  
  # Second tab content
  tabItem(tabName = "widgets")
))



## BUILD UI
ui <- dashboardPage(header,sidebar,body)

## BUILD SERVER FUNCTION
server <- function(input, output, session) {
  data <- reactive({input$boxId})
  
  output$boxImg <- renderUI({
    x <- input$boxId
    x <- df %>% filter(box_id == x)
    
    tagList(
      tags$img(src = x$box_img, height ="200"),
    )


  })
  
  output$pitImg <- renderUI({
    x <- input$boxId
    x <- df %>% filter(box_id == x)
    
    tagList(
      tags$img(src = x$pit_img, height ="200")
    )
    
  })
  
  output$west <- renderUI({
    x <- input$boxId
    x <- df %>% filter(box_id == x)
    
    tagList(
      tags$img(src = x$west_img, width ="200")
    )
    
  })
  
  output$north <- renderUI({
    x <- input$boxId
    x <- df %>% filter(box_id == x)
    
    tagList(
      tags$img(src = x$north_img, width ="200")
    )
    
  })
  
  output$east <- renderUI({
    x <- input$boxId
    x <- df %>% filter(box_id == x)
    
    tagList(
      tags$img(src = x$east_img, width ="200")
    )
    
  })
  
  output$south <- renderUI({
    x <- input$boxId
    x <- df %>% filter(box_id == x)
    
    tagList(
      tags$img(src = x$south_img, width ="200")
    )
    
  })
}

# Run the application 
shinyApp(ui = ui, server = server)


