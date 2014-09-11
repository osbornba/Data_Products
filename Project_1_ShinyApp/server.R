library(stats)
library(graphics)
x<-function(mu, sigma) rnorm(1000, mu, sigma)
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({hist(x(input$mu, input$sigma), 
                                       main='Normal Distribution Histogram', 
                                       xlab='Data Value')})
  }
)