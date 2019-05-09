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
  titlePanel("Rice Trait over Different Populations or Regions "),
  
  #helpful information on the app 
  helpText("This is app that can allow the users to select a trait that they want from the rice data and it will plot the selected trait either over different populations or regions."),
  
  # Sidebar with a slider input for number of 
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait",
                   "Choose a trait:",
                   c("Alu.Tol","Plant.height","Panicle.length","Seed.length","Seed.width")
    ),
       radioButtons("group",
                    "Choose either population or region:",
                    c("Population","Region")
       )),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("violinPlot")
    )
  )
))
