mtcars_data <- read.csv("D:/Aks/CUSAT/Semester V/R for Data Science/Lab/mtcars.csv")

head(mtcars_data)

mtcars_data$cyl <- as.character(mtcars_data$cyl)

table_data <- xtabs(~ am + cyl, data = mtcars_data)

barplot(table_data, beside = TRUE, col = c("green", "yellow"),
        xlab = "Number of Cylinders", ylab = "Count",
        main = "Cylinders vs. Transmission Type")


legend("top", legend = unique(mtcars_data$am), fill = c("green", "yellow"), title = "Transmission Type")

