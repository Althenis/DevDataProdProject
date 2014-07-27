library(shiny)

shinyUI(
  pageWithSidebar(
  #Application title
  headerPanel("Temperature conversion"),
  
  sidebarPanel(
    # Numeric input for chosen temperature 
    numericInput('temp','Temperature',0,min=-100, max=200, step = 1),
    h5("1. Enter desired temperature value to Temperature-field"),
    h5("2. Check results from right.")
    ),
  mainPanel(
    h3('Result'),
    h4('You entered'),
    verbatimTextOutput("Input"),
    h4("Celsius to Fahrenheit"),
    verbatimTextOutput("ctof"),
    h4("Fahrenheit to Celsius"),
    verbatimTextOutput("ftoc")
    )
  )
)