<p align="center">
<img src="https://github.com/user-attachments/assets/21c7409c-4d4d-4fc8-be49-955870f066fe" alt="Stock Price Simulator Logo" width="200"/>
</p>

## **Overview**
The **Stock Price Simulator with AI** is a dynamic, interactive **Shiny web application** that allows users to simulate and predict stock prices using **machine learning algorithms**. This tool is designed to help you:
- Simulate the buying and selling of stocks.
- Track your portfolio performance in real-time.
- Visualize stock price trends over time.
- Leverage AI-driven predictions to make smarter investment decisions.

With real-time stock data, interactive charts, and powerful AI predictions, this simulator provides users with an exciting and insightful experience.

---

## **Features** 🌟
### **Stock Price Simulation**
- Simulate buying and selling of stocks with **real-time** data.
- Visualize stock price trends and gain insights into market movements.

### **AI Stock Price Prediction**
- Utilize **machine learning** models to predict future stock prices.
- Make more informed decisions based on AI-powered insights.

### **Portfolio Management**
- Track your **investment portfolio** and view real-time updates on your portfolio value.
- Monitor profit/loss and gain insights on your investment strategy.

### **Data Visualization**
- Interactive graphs to display **stock price trends** and **AI predictions**.
- **Visual tools** to analyze market patterns and predict potential movements.

### **User-Friendly Interface**
- Clean, intuitive, and **easy-to-navigate interface**.
- Options to input stock symbols, select time periods, and adjust simulation parameters.

### **Currency Conversion**
- **Convert stock prices** into different currencies such as USD, EUR, INR, and more.

### **Real-Time Stock Data**
- Integrate with financial data APIs to fetch **live stock prices** and keep the simulation up-to-date.

---

## **Technologies Used** 💻
This project uses the following technologies:

- **Shiny**: For creating interactive web applications in R.
- **Plotly**: To generate dynamic and **interactive data visualizations**.
- **Machine Learning Models**: To predict future stock prices based on historical data (e.g., Random Forest, ARIMA, LSTM).
- **API Integration**: Pulls real-time stock data from financial data APIs like **Alpha Vantage** and **Yahoo Finance**.
- **R Libraries**: 
   - `shiny`, `plotly`, `dplyr`, `ggplot2`, `tidyverse`, `forecast`, `caret`

---

## **Installation Instructions** 🛠️
1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/yourusername/stock-price-simulator-ai.git

2. Install the required R libraries:
   ```bash
   install.packages(c("shiny", "plotly", "dplyr", "forecast", "caret"))

3. Run the application in RStudio:
   ```bash
   shinyApp(ui = ui, server = server)

### **Simulating Stock Prices**
- Enter a stock symbol (e.g., `AAPL`, `TSLA`, `GOOG`).
- Choose a time range to visualize the stock price over.
- The app will display real-time prices and AI-generated predictions.

### **AI Predictions**
- The app uses historical stock data to **predict** future stock prices.
- Make more **informed decisions** by analyzing predicted movements.

### **Managing Your Portfolio**
- Simulate buying and selling of stocks.
- Track your portfolio’s **value** and **profit/loss**.

## **AI Predictions** 🔮
The AI in this project predicts **future stock prices** using powerful machine learning models. By analyzing **historical data**, the model provides users with predictions for short-term price movements, helping you to make informed investment decisions.

## **Data Sources** 📊

- **Real-Time Stock Data**: The app uses **Alpha Vantage** or **Yahoo Finance APIs** to fetch real-time stock prices.
- **Historical Data**: Historical stock prices are used to train machine learning models, which generate the AI predictions.

## **Live Testing** ⚠️

Link : https://avaldharvijaysimhaa.shinyapps.io/Stock_Price_Simulator/

## **Contributing** 🤝
We welcome contributions from the community! If you'd like to contribute to this project, please follow these steps:
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new **pull request**.

## **License** 📜
This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for more details.

## **Acknowledgments** 🎉
- Thanks to **Alpha Vantage** and **Yahoo Finance** for providing real-time stock data.
- Special thanks to **Shiny** and **Plotly** for creating interactive web apps and visualizations.

## **Enjoy simulating and predicting your stock investments!** 🚀📈
