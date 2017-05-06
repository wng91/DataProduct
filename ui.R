#Project on Data Product

##In this Project, we will look at how the proportion of the data used to train a model will affect the accuracy of the model

library(shiny)
shinyUI(fluidPage(
        titlePanel("Data Modeling(Decision Tree)"),
    sidebarLayout(
    sidebarPanel(
      numericInput("Proportion","Proportion use for training",min=0,max=1,value= .75,step = .05),
      checkboxInput("Show accuracy","Show/Hide Accuracy", value = TRUE)
    ),
    mainPanel(
      h3("Accuracy of Model"),
      textOutput("Accuracy")
      
    )
    

    )  
   )
  )

