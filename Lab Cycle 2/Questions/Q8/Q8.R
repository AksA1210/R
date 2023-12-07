# Load required packages
library(datasets)  # This package contains the Titanic dataset
#library(tidyverse)
library(ggthemes)
library(ggplot2)
Titanic
head(Titanic)
# Load Titanic dataset
data("Titanic")
titanic_df <- as.data.frame(Titanic)
colnames(titanic_df)

# a) Histogram of Number of parents and children of the passenger aboard (Parch)
ggplot(titanic_df, aes(x = Freq)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Number of Parents and Children Aboard (Parch)",
       x = "Number of Parents and Children",
       y = "Count") +
  theme_minimal()

# b) Detailed EDA
# Explore factors influencing survival rates

# Survival rate by class
ggplot(titanic_df, aes(x = as.factor(Class), y = Freq, fill = as.factor(Survived))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Survival Rate by Class",
       x = "Class",
       y = "Count",
       fill = "Survived") +
  theme_minimal()

# Survival rate by gender
ggplot(titanic_df, aes(x = Sex, y = Freq, fill = as.factor(Survived))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Survival Rate by Gender",
       x = "Gender",
       y = "Count",
       fill = "Survived") +
  theme_minimal()

# c) Customized box plot to visualize the age distribution of survivors and non-survivors
ggplot(titanic_df, aes(x = as.factor(Survived), y = Age, fill = as.factor(Survived))) +
  geom_boxplot() +
  labs(title = "Age Distribution of Survivors and Non-Survivors",
       x = "Survived",
       y = "Age") +
  theme_minimal() +
  theme(legend.position = "none")  # Remove legend for better visualization

