library(shiny)

# Define UI
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Predicting Stopping Distances of Cars"),
  
  #Side Panel
  sidebarPanel(
    
      p("This App takes the speed of cars (in mph) and estimates the distances taken to stop. Note that the data was recorded in the 1920s."),
      br(),
      numericInput('speed','Enter speed (mph)*:',7,min=7,max=25),
      submitButton('Predict stopping distance'),
      br(),
      p("*For more accuracy choose a number between 7 and 25")
    ),
  
  #Main Panel
  mainPanel(
    
      h3("Results of prediction"),
      
      h4("You entered in mph:"),
      verbatimTextOutput("speed_input"),
      br(),
      h4("Predicted distance in ft:"),
      verbatimTextOutput("prediction"),
      p("fit=predicted value, [lwr and upr] = confidence interval")

    
    )
  
))
