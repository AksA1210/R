library(ggplot2)

house<-read.csv("C:/Users/cusat/Desktop/R-codes/house-prices-advanced-regression-techniques/train.csv")

head(house)

lm(SalePrice~LotArea,house)
ggplot(house, aes(LotArea,SalePrice)) + geom_point() + geom_smooth(method = "lm")
