library(shiny)


shinyServer(function(input, output) {

  output$CIPlot <- renderPlot( {
          mu <- input$mu
          n=input$n
          m=input$m
          sigma=input$sigma
          alpha= 1- input$confidence
          xbar=c(); xbar=numeric(m);
          for(i in 1:m) {
              x=rnorm(n,mu,sigma)
              xbar[i] = mean(x) }
          stderr=qnorm(1-alpha/2)*sigma/sqrt(n)
          k=sum(xbar - stderr < mu  &  xbar + stderr > mu); 
          ci=round(k/m*100,2)
          matplot(rbind(xbar-stderr, xbar+stderr),rbind(1:m,1:m),
                  type="l",lty=1, 
              main=paste("Confidence interval is ",ci,'%'))
          abline(v=mu) # draw line for mu
    })
}
)