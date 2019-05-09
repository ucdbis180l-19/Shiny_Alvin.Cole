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
  titlePanel("Rice Traits over Different Populations or Regions "),
  
  #helpful information on the app 
  helpText("This is an app that allows the user to visualize a trait from rice samples from around the world. Users can group the data by the region the data was collected from or by their ancestral population as inferred by fastStructure."),
  
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait",
                   "Choose a trait:",
                   c("Aluminum Tolerance" = "Alu.Tol",
                     "Plant height" = "Plant.height",
                     "Panicle length" = "Panicle.length",
                     "Seed length" = "Seed.length",
                     "Seed width" = "Seed.width")
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
