# Load the ggplot2 library
library(ggplot2)

# Create a scatter plot of 'displacement' versus 'weight'
ggplot(mtcars, aes(x = wt, y = disp, color = factor(carb), shape = factor(carb))) +
  geom_point(size=3) +  # Scatter plot
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +  # Add a linear trendline
  labs(
    title = "Scatter Plot of Displacement vs. Weight by Number of Carburetors",
    x = "Weight (wt)",
    y = "Displacement (disp)"
  ) +
  scale_color_discrete(name = "Carburetors") +  # Legend title for colors
  scale_size_discrete(name = "Carburetors") +   # Legend title for sizes
  theme_minimal()

