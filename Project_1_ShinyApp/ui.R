shinyUI(
  pageWithSidebar(
    # Normal Distribution Histogram
    headerPanel("Normal Distribution Histogram"),
    sidebarPanel(
      h5("Use the sliders to set the mean and standard deviation, then push the Submit button."), 
      h5("A histogram of the Normal Distribution with the specified mean and standard deviation will be displayed."),
      sliderInput('mu', 'Enter mean', value = 0, min = -3, max = 3, step = .1),
      #numericInput('mu', 'mean', 0, min = -3, max = 3, step = .25),
      #numericInput('sigma', 'Standard Deviation', 1, min= .5, max = 10, step = .25),
      sliderInput('sigma', 'Enter standard deviation', value = 1, min = .5, max = 10, step = .1),
      submitButton('Submit')
    ),
    mainPanel(
      plotOutput('newHist')
    )
  )
)