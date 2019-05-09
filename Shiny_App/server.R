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
rice_data$Population <- as.character(rice_data$assignedPop)

y_labels <- c("Aluminum Tolerance","Plant height", "Panicle length","Seed length","Seed width")
name_data <- matrix(data=y_labels,nrow=1,ncol=5)
colnames(name_data) <- c("Alu.Tol","Plant.height","Panicle.length","Seed.length","Seed.width")

shinyServer(function(input, output) {
  
  
  output$violinPlot <- renderPlot({
    
    pl <- ggplot(data=rice_data,
                 aes_string(x=input$group,
                            y=input$trait))
    pl + geom_violin(fill="light blue") + ylab(name_data[,input$trait])
    
  })
  
})
