library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Calculate miles to km."),
        sidebarPanel(
                h3('Insert the amount of miles you want to be converted to km.'),
                numericInput('miles','Input miles here',0),
                submitButton('Submit')
        ),
        mainPanel(
                h3('Converted miles to km'),
                h4('You entered miles'),
                verbatimTextOutput("inputValue"),
                h4('This is in km'),
                verbatimTextOutput("prediction")
        )
))