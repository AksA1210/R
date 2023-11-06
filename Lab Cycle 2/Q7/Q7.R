library(ggplot2)
library(dplyr)

# Load the data
data<- read_csv("C:/Users/cusat/Desktop/R-codes/archive/time-series-19-covid-combined.csv")
# Convert the data to a time series object
ts_data <- ts(data[, -c(1:4)], start = c(2020, 1), frequency m     = 7)

# Plot the time series object
ggplot() +
  geom_line(aes(x = time(ts_data), y = ts_data[, 1], color = "Confirmed")) +
  geom_line(aes(x = time(ts_data), y = ts_data[, 2], color = "Recovered")) +
  geom_line(aes(x = time(ts_data), y = ts_data[, 3], color = "Deaths")) +
  labs(title = "COVID-19 Time Series Data",
       x = "Date",
       y = "Number of Cases") +
  scale_color_manual(values = c("Confirmed" = "blue",
                                "Recovered" = "green",
                                "Deaths" = "red")) +
  theme_minimal()


