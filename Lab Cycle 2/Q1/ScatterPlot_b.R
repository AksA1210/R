mtcars_data <- read.csv("D:/Aks/CUSAT/Semester V/R for Data Science/Lab/mtcars.csv")
head(mtcars_data)
plot(mtcars_data$disp, mtcars_data$mpg, xlab = "Displacement (cubic inches)", ylab = "Miles per Gallon",
     main = "Miles per Gallon vs Displacement",pch=16)
points(mtcars_data$disp[mtcars_data$cyl == 4], mtcars_data$mpg[mtcars_data$cyl == 4], col = "blue", pch = 1)
points(mtcars_data$disp[mtcars_data$cyl == 6], mtcars_data$mpg[mtcars_data$cyl == 6], col = "red", pch = 2)
points(mtcars_data$disp[mtcars_data$cyl == 8], mtcars_data$mpg[mtcars_data$cyl == 8], col = "green", pch = 3)

abline(lm(mpg ~ disp, data = mtcars_data), col = "black") 
legend("topright", legend = unique(mtcars_data$cyl), col = c("blue", "red", "green"), pch = 1:3, title = "Cylinders")

