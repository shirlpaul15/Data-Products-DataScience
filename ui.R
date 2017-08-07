# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("Body Mass Index Calculator"),
  
  sidebarLayout(
    sidebarPanel( 
      numericInput("Height",label = h3("Enter your height (in Centimeter)"),min = 0, max = 250,0),
      br(),
      numericInput("Weight",label = h3("Enter your weight (in Kilograms)"),min = 0, max = 500,0), 
      br(),
      br(),   
      actionButton("Submit", label = "Submit")    
      
      
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("BMI Calculator",
                 p(h2("Calculated BMI:")),
                 textOutput("BMI")
                 
        )
      )
    ))
)
)
