#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Lançamentos de Dois Dados"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      actionButton("d02", label = "2"),
      p(),
      actionButton("d03", label = "3"),
      p(),
      actionButton("d04", label = "4"),
      p(),
      actionButton("d05", label = "5"),
      p(),
      actionButton("d06", label = "6"),
      p(),
      actionButton("d07", label = "7"),
      p(),
      actionButton("d08", label = "8"),
      p(),
      actionButton("d09", label = "9"),
      p(),
      actionButton("d10", label = "10"),
      p(),
      actionButton("d11", label = "11"),
      p(),
      actionButton("d12", label = "12")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
