library(shiny)

shinyUI(fluidPage(

    titlePanel("Regression GUI"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("k_folds",
                        "k-Folds:",
                        min = 0,
                        max = 15,
                        value = 5,
                        step = 1),
        actionButton("do", "Run Regression")
        ),

        mainPanel(
            plotOutput("distPlot")
        )
    )
))
