# Define UI for slider demo application
shinyUI(fluidPage(
        
        #  Application title
        titlePanel("Confidence Interval for the mean when sigma is known"),
        
        # Sidebar with sliders that demonstrate various available
        # options
        sidebarLayout(
                sidebarPanel(
                        # Population mean
                        sliderInput("mu", "Population Mean:", 
                                    min=0, max=200, value=72),
                        
                        # Population std
                        sliderInput("sigma", "Population Standard deviation:",
                                    min = 0, max = 300, value = 8),
                        
                        # Confidence level
                        sliderInput("confidence", "Confidence level:", 
                                    min = 0, max = 1, value = 0.95, step= 0.01),
                        
                        # Sample size
                        sliderInput("n", "Sample size:", 
                                    min = 0, max = 100, value = 30, step = 1),
                        
                        # Number of samples
                        sliderInput("m", "No. of samples:", 
                                    min = 0, max = 200, value = 50, step = 1)
                        
                ),
                
                # Show a table summarizing the values entered
                mainPanel(
                        plotOutput('CIPlot')
                )
        )
))