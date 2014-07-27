library(shiny)

shinyServer(
  function(input, output) {
    # Reactive function
    x <- reactive({as.numeric(input$temp)})
    
    # Display the value entered by user
    output$Input <- renderPrint({input$temp})
    
    # Display the value in Fahrenheit
    output$ctof <- renderText({paste(input$temp, "C = ", x() *1.8 + 32, "F")})
    
    # Display the value in Celsius
    output$ftoc <- renderText({paste(input$temp, "F = ",(x() -32) / 1.8, "C")})
  }
)