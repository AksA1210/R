

library(datasets)

data(mtcars)

plot(mtcars$wt, mtcars$disp, 
     col = mtcars$carb,      
     pch = 16,               
     cex = mtcars$carb + 1,  
     main = "Scatterplot of Displacement vs Weight",
     xlab = "Weight",
     ylab = "Displacement")

legend("topright", legend = unique(mtcars$carb), 
       title = "Carburetors",
       col = unique(mtcars$carb),
       pch = 16,
       cex = 1)

# Smooth line 
lines(loess.smooth(mtcars$wt, mtcars$disp), col = "blue", lwd = 2)

xlabel <- "Weight"
ylabel <- "Displacement"
title(xlab = xlabel, ylab = ylabel)
