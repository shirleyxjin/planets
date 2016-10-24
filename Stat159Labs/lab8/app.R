library(shiny)

Advertising <- read.csv("Advertising.csv")

ui <- fluidPage(
  headerPanel('Sales vs. Advertising Budgets'),
  sidebarPanel(
    selectInput('xcol', 'Advertising Media', names(Advertising)[2:4]),
    selectInput('ycol', 'Sales', names(Advertising)[5])
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  output$plot1 <- renderPlot({
    plot(Advertising[,input$xcol], Advertising[,input$ycol],xlab=input$xcol,ylab=input$ycol,main="Scatterplot of Advertising Budgets",pch=19,col="brown3",cex=0.8)
  })

}

shinyApp(ui = ui, server = server)
