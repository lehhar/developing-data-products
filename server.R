library(shiny)

milesTOkm <- function(miles) miles * 1.609344

shinyServer(
        function(input, output){
                output$inputValue <- renderPrint({input$miles})
                output$prediction <- renderPrint({milesTOkm(input$miles)})
        }
)