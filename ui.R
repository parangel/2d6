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
      p("Resultado:"),
      p("02: ", actionButton("p02", label = "+"), actionButton("m02", label = "-")),
      p("03: ", actionButton("p03", label = "+"), actionButton("m03", label = "-")),
      p("04: ", actionButton("p04", label = "+"), actionButton("m04", label = "-")),
      p("05: ", actionButton("p05", label = "+"), actionButton("m05", label = "-")),
      p("06: ", actionButton("p06", label = "+"), actionButton("m06", label = "-")),
      p("07: ", actionButton("p07", label = "+"), actionButton("m07", label = "-")),
      p("08: ", actionButton("p08", label = "+"), actionButton("m08", label = "-")),
      p("09: ", actionButton("p09", label = "+"), actionButton("m09", label = "-")),
      p("10: ", actionButton("p10", label = "+"), actionButton("m10", label = "-")),
      p("11: ", actionButton("p11", label = "+"), actionButton("m11", label = "-")),
      p("12: ", actionButton("p12", label = "+"), actionButton("m12", label = "-")),
      hr(),
      checkboxInput("esperado", label = "Valor Esperado", value = TRUE)
      ),


    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
