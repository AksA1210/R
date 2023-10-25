#Method 1 
x<-c(1,2,3,4,5)
y<-c(3,7,8,9,12)
plot(x,y)

#METHOD 2 
plot(c(1,2,3,4,5),c(3,7,8,9,12))

#Linear i.e (1,1),(2,2).......
plot(1:10)

plot(1:10,main = "MyGraph",)
plot(1:10,col="blue")  #Color of the dot

#According to diff values diff symbols (pch)
#cex -  used to change the density
plot(1:10,pch = 16,cex = 1)

#Line Plotting
plot(1:10,type ="l",xlab = "x-axis",ylab = "y-axis")
plot(1:10,type ="l",col = "blue",xlab = "x-axis",ylab = "y-axis")
plot(1:10,type ="l",lwd = 1.5,xlab = "x-axis",ylab = "y-axis")
#lty ranges from 0 to 6
plot(1:10,type ="l",lwd = 1.5,lty = 3)

#Multiple lines
line1<-c(1,2,3,4,5,10)
line2<-c(2,5,7,8,9,10)
plot(line1,type="l",col="blue")
lines(line2,type="l",col="red")


#Scatter plot
x<-c(5,7,8,7,2,2,9,4,11,12,9,6)
y<-c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x,y,main="Observation of cars",xlab="Car age",ylab="Car speed",pch=16,cex=1)

