#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

rice_data <- read.table("Rice_Pheno.txt",header=TRUE)

shinyServer(function(input, output) {
   
  output$plot <- renderPlot({
    
    pl <- ggplot(data=rice_data,
                 aes_string(x=input$group,
                            y=input$trait))
    pl + geom_violin()
    
  })
  
})
