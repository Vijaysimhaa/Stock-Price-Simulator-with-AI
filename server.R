library(shiny)
library(zoo)

shinyServer(function(input, output) {
  # Reactive data generation
  stock_prices <- eventReactive(input$simulate, {
    set.seed(input$seed)
    initial_price <- input$start_price
    days <- input$days
    daily_changes <- rnorm(days, mean = input$daily_mean / 100, sd = input$volatility)
    prices <- cumsum(c(initial_price, daily_changes))
    data.frame(Day = 0:days, Price = prices)
  })
  
  # Add optional moving average
  stock_with_ma <- reactive({
    data <- stock_prices()
    if (input$show_moving_avg) {
      data$MovingAvg <- zoo::rollmean(data$Price, input$ma_window, fill = NA, align = "right")
    }
    data
  })
  
  # AI Prediction: Predict next day's price
  ai_prediction <- reactive({
    data <- stock_prices()
    last_price <- tail(data$Price, 1)
    trend <- mean(tail(data$Price, 5))  # Use last 5 days for a basic trend
    predicted_change <- input$daily_mean / 100 + runif(1, -input$volatility, input$volatility)
    predicted_price <- last_price * (1 + predicted_change)
    list(predicted_price = round(predicted_price, 2), trend = trend)
  })
  
  # Render the stock price plot
  output$stockPlot <- renderPlot({
    data <- stock_with_ma()
    plot(data$Day, data$Price, type = "l", col = "blue", lwd = 2,
         xlab = "Days", ylab = "Price", main = "Stock Price Simulation")
    if (input$show_moving_avg) {
      lines(data$Day, data$MovingAvg, col = "orange", lwd = 2, lty = 2)
    }
  })
  
  # Final price display
  output$finalPrice <- renderText({
    prices <- stock_prices()$Price
    paste("Final Price:", round(tail(prices, 1), 2))
  })
  
  # Percentage price change display
  output$priceChange <- renderText({
    prices <- stock_prices()$Price
    pct_change <- (tail(prices, 1) - prices[1]) / prices[1] * 100
    paste("Percentage Change:", round(pct_change, 2), "%")
  })
  
  # AI Insights: Prediction and Trend Analysis
  output$aiPrediction <- renderText({
    prediction <- ai_prediction()
    paste("AI Prediction for Next Day's Price: $", prediction$predicted_price)
  })
  
  output$aiTrend <- renderText({
    prediction <- ai_prediction()
    trend <- ifelse(prediction$trend > tail(stock_prices()$Price, 1),
                    "Downward Trend",
                    "Upward Trend")
    paste("AI Trend Analysis:", trend)
  })
  
  # Render simulation details
  output$details <- renderPrint({
    list(
      "Starting Price" = input$start_price,
      "Number of Days" = input$days,
      "Volatility" = input$volatility,
      "Mean Daily Change (%)" = input$daily_mean
    )
  })
})
