#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    valesp <- c(1:6, 5:1) / 36

  output$distPlot <- renderPlot({
    valores <- c(max(0, input$p02 - input$m02),
				max(0, input$p03 - input$m03),
				max(0, input$p04 - input$m04),
				max(0, input$p05 - input$m05),
				max(0, input$p06 - input$m06),
				max(0, input$p07 - input$m07),
				max(0, input$p08 - input$m08),
				max(0, input$p09 - input$m09),
				max(0, input$p10 - input$m10),
				max(0, input$p11 - input$m11),
				max(0, input$p12 - input$m12))
    plot(2:12, valores, names.arg = 2:12, type = "h", col = "#4477AA", lwd = 3, ylab = "Total", ylim = c(0, max(max(valores, sum(valores) / 6))))

	if (input$esperado) {
		points(2:12, valesp * sum(valores), pch = 1, col = "#CC6677")
	}
    # # generate bins based on input$bins from ui.R
    # x    <- faithful[, 2]
    # bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    # hist(x, breaks = bins, col = 'darkgray', border = 'white')

  })

})
