library(shiny)

shinyServer(function(input, output) {
  output$oBmi <- renderText({
    heightInMeters <- as.numeric(input$height) / 100;

    weight <- as.numeric(input$weight);
    
    bmi<- weight / heightInMeters^2;
    paste(bmi);
  })
})