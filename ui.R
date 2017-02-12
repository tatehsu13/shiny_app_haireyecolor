
library(shiny)

# Define UI for application
shinyUI(fluidPage(
  titlePanel(h4('Breakdown of students for the selected eye/hair color', align = "center")),
  sidebarLayout(

    sidebarPanel(
      helpText("Selection of hair color and sex "),

      selectInput("hairclr",
                  label = "Select Hair Color",
                  choices = c("Black", "Brown","Red","Blond"),
                  selected = "Black"),

      selectInput("sex",
                  label = "Select Sex",
                  choices = c( "Female","Male"),
                  selected = "Female"),
      radioButtons("colour", label = "3. Select the color for barchart",
                   choices = c("Blue", "Red",
                               "Yellow", "Brown"), selected = "blue")

    ),

    mainPanel(


      plotOutput("bart2"),
      textOutput("text1"),
      textOutput("text2")
    )
  )
) )
