#------------Univariate---------------


install.packages("ggplot2")
install.packages("zoo")

library(ggplot2)
library(zoo)


covid_data <- data.frame(
  Date = seq(as.Date("2022-01-01"), as.Date("2022-12-31"), by = "days"),
  TotalCases = cumsum(sample(10:50, 365, replace = TRUE))
)

# Create a time series object
ts_data <- zoo(covid_data$TotalCases, covid_data$Date)

# Visualize the time series data using a line chart
ggplot(covid_data, aes(x = Date, y = TotalCases)) +
  geom_line() +
  labs(title = "Total Positive COVID-19 Cases Over Time",
       x = "Date",
       y = "Total Cases") +
  theme_minimal()

#----------Multivariate----------

covid_data <- data.frame(
  Date = seq(as.Date("2022-01-01"), as.Date("2022-12-31"), by = "days"),
  TotalCases = cumsum(sample(10:50, 365, replace = TRUE)),
  TotalDeaths = cumsum(sample(1:10, 365, replace = TRUE))
)

# Create a multivariate time series object
ts_data <- zoo(cbind(covid_data$TotalCases, covid_data$TotalDeaths), covid_data$Date)

# Plot both series on a single chart
autoplot(ts_data, facets = NULL) +
  labs(title = "Total Positive COVID-19 Cases and Total Deaths Over Time",
       x = "Date",
       y = "Count") +
  scale_color_manual(values = c("blue", "red")) +
  theme_minimal()

#----------------Time series forecasting---------------


install.packages("forecast")
library(forecast)


covid_data <- data.frame(
  Date = seq(as.Date("2022-01-01"), as.Date("2022-12-31"), by = "days"),
  TotalCases = cumsum(sample(10:50, 365, replace = TRUE))
)

# Convert data to a time series object
ts_data <- ts(covid_data$TotalCases, frequency = 1)

# Fit an ARIMA model using auto.arima
arima_model <- auto.arima(ts_data)

# Forecast the next 5 data points
forecast_values <- forecast(arima_model, h = 5)

# Plot the forecasted values
plot(forecast_values, main = "ARIMA Forecast for Total Positive COVID-19 Cases",
     xlab = "Date", ylab = "Total Cases", xlim = c(2022, 2023))

# Add the actual data for comparison
lines(ts_data, col = "blue")
legend("topright", legend = c("Actual", "Forecast"), col = c("blue", "red"), lty = 1)

