# Load the mtcars dataset
data(mtcars)

# Convert 'gear' to a factor
mtcars$gear <- as.factor(mtcars$gear)

# Check the structure of the dataset
str(mtcars)

# Perform one-way ANOVA
anova_result <- aov(disp ~ gear, data = mtcars)

# Print the ANOVA table
print(summary(anova_result))

# Check the p-value to determine significance
p_value <- summary(anova_result)[[1]][["Pr(>F)"]][1]
cat("\nP-value: ", p_value, "\n")

# Post-hoc analysis (Tukey HSD test) if ANOVA is significant
if (p_value < 0.05) {
  posthoc <- TukeyHSD(anova_result)
  print(posthoc)
}
