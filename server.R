library(shiny)
library(caret)
library(e1071)


shinyServer(function(input,output){
  output$Accuracy=renderText({
    
  set.seed(456)
  intrain=createDataPartition(iris$Species ,p=input$Proportion ,list=FALSE)
  Ntrain=iris[intrain,]
  Ntest=iris[-intrain,]
  model=train(Species~.,data=Ntrain, method="rpart")
  prediction=predict(model,Ntest)
  
  
  
 
    
    
      
    if(input$'Show accuracy'){confusionMatrix(prediction,Ntest$Species)$overall[1]
      
      }
    
    })
  
} 
) 
  
  
  

