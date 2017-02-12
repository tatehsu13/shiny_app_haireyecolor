
library(shiny)
hecdf <- data.frame(HairEyeColor)


# Define server logic required to getwdraw a histogram
shinyServer(function(input, output) {


  output$text1 <- renderText({
    paste("Selected color:", input$hairclr)

  })

  output$text2 <- renderText({
    paste("Selected Sex:", input$sex)
  })



  output$bart2 <- renderPlot(

    {
      t2 <- subset(hecdf,Hair== input$hairclr & Sex == input$sex ,select = c(Eye, Freq))
      barplot(t2$Freq,names.arg = t2$Eye,col = input$colour)
    }
  )
}


)
