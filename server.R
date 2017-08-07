# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {
  
  cal <- reactiveValues()
  
  observe({
    input$Submit
    cal$bmi <- isolate({
      input$Weight/(input$Height * input$Height * 0.0001)
      
    })
  })
  
  output$BMI <- renderText({
    if(input$Submit == 0) ""
    else
      
      paste(cal$bmi)
  })
  
})
