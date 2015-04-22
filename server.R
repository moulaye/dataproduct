library(shiny)
#Load datasets
library(datasets)

# Define server logic
shinyServer(function(input, output) {
  
  output$speed_input <- renderPrint({input$speed})
  
  
  #prediction model
  m <- lm(dist ~ speed, data=cars)
  #output predicted value
  output$prediction  <- renderPrint(predict(m,data.frame(speed=input$speed),interval="confidence"))
  
  
})
