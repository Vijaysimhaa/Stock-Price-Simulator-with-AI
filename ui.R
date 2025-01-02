library(shiny)

shinyUI(fluidPage(
  theme = bslib::bs_theme(bootswatch = "cyborg"),  # Stylish dark theme
  titlePanel("Stock Price Simulator with AI"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("start_price", "Starting Price:", value = 100, min = 1, max = 1000),
      numericInput("days", "Number of Days:", value = 30, min = 1, max = 365),
      sliderInput("volatility", "Volatility (Standard Deviation):", min = 0.1, max = 5, value = 1, step = 0.1),
      sliderInput("daily_mean", "Mean Daily Change (%):", min = -1, max = 1, value = 0.1, step = 0.01),
      numericInput("seed", "Random Seed (Optional):", value = 123, min = 1, step = 1),
      checkboxInput("show_moving_avg", "Show Moving Average", value = FALSE),
      numericInput("ma_window", "Moving Average Window (Days):", value = 5, min = 1),
      actionButton("simulate", "Simulate", class = "btn-primary"),
      hr(),
      helpText("Simulate stock prices and get AI-driven insights.")
    ),
    mainPanel(
      plotOutput("stockPlot"),
      hr(),
      fluidRow(
        column(6, textOutput("finalPrice")),
        column(6, textOutput("priceChange"))
      ),
      hr(),
      h4("AI Insights:"),
      textOutput("aiPrediction"),
      textOutput("aiTrend"),
      hr(),
      h5("Simulation Data:"),
      verbatimTextOutput("details")
    )
  )
))
