library(shiny)

shinyServer(function(input, output) {
    
    res <- eventReactive(input$do, {
        k_folds <- input$k_folds
        print("hi")
        k_folds
    })

    output$distPlot <- renderPlot({
        k_folds = res()
        print("HEy")
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = k_folds + 1)

        hist(x, breaks = bins, col = 'darkgray', border = 'white')

    })

})
