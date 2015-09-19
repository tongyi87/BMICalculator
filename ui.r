library(shiny)


shinyUI(fluidPage(
  titlePanel("BMI Calculator"),

  sidebarLayout(
    sidebarPanel(
      h4("Enter your weight and height:"),
      textInput("weight", label = h3("Weight(kg)"), value = ""),
      textInput("height", label = h3("Height(cm)"), value = "")
    ),
    
    mainPanel(
      h1("Your Body Mass Index(BMI) is:"),
      h2(verbatimTextOutput("oBmi")),
      
      h4("18.4 and below"),
      h5("Risk of developing problems such as nutritional deficiency and osteoporosis"),
      h4("18.5 to 22.9"),
      h5("Low Risk (healthy range)"),
      h4("23.0 to 27.4"),
      h5("Moderate risk of developing heart disease, high blood pressure, stroke, diabetes"),
      h4("27.5 and above"),
      h5("High risk of developing heart disease, high blood pressure, stroke, diabetes"),
      h6("Body mass index (n.d.). In Wikipedia. Retrieved September 15, 2015, from https://en.wikipedia.org/wiki/Body_mass_index")
    )
  )
))