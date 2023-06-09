library(tidyverse)


library(shiny)
ui <- fluidPage(
  numericInput(input="n",
               "Sample size", value=25),
  plotOutput(outputId = "hist"))
server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$n))
  })
}
shinyApp(ui=ui,server=server)



