library(shiny)
library(ggplot2)

# subsetyear <- function( startyr, endyr, resd ){
#       subresd <- subset( resd, subset = resd$Year == startyr )
# }

shinyServer(function(input, output) {
      
#       sresd <- reactive( resd[, as.numeric(as.character(resd$Year)) > as.numeric(as.character(input$startyr)) & as.numeric(as.character(resd$Year)) < as.numeric(as.character(input$endyr))] )

      ## Read in the Canadian origin CSV
      resd <- read.csv( "permresdbycountry.csv", row.names = 1, header = FALSE, stringsAsFactors = FALSE )
      rownames( resd )[1] <- "Year"
      rownames( resd ) <- make.names( rownames( resd ) )
      colnames( resd ) <- make.names( 1980:2014 )
      resd <- t( resd )
      resd <- data.frame( resd )
#       for( col in 1:ncol(resd) ){
#             resd[ ,col ] <- as.numeric(  levels(resd[ ,col ])  )[resd[,col]]
#       }
      
      output$plot <- renderPlot({
            gp <- ggplot( resd, aes_string( x = "Year", y = input$country, group = 1 ) ) + geom_point( ) + geom_path()
            gp <- gp + ggtitle( paste( "Permanent Residents from:", input$country ) )
            print( gp )
      })
      output$Yr <- renderPrint( input$year )
      output$YrAmnt <- renderPrint({ resd[ input$year-1979, input$country ] })
})