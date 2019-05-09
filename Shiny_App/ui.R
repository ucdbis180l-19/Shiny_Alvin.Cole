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
  titlePanel("Rice Trait over Different Regions "),
  
  #helpful information on the app 
  helpText("This is app that can allow the users to select a trait that they want from the rice data and it will plot the selected trait either over different populations or regions."),
  
  # Sidebar with a slider input for number of 
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait",
                   "Choose a trait:",
                   c("Alu.Tol","Plant Height","Panicle Length","Seed length","seed width")
    ),
       radioButtons("group",
                    "Choose either population of region:",
                    c("assignedPop","Region")
       )),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("violinPlot")
    )
  )
))
