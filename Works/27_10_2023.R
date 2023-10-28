#x<-c(10,20,30,40)
pie(x)

pie(x,init.angle = 90)

my_label<-c('apples','bananas','cherries','dates')

pie(x,label=my_label,main='fruits')

colours<-c('red','yellow','pink','brown')
pie(x,label=my_label,main='fruits',col=colours)
legend('bottomright',my_label,fill = colours)

a<-c('A','B','C','D')
b<-c(2,4,6,8)

#horizontal bars
#readability is more
barplot(b,names.arg=a,col=colours,horiz = TRUE)

data<-c(9,4,0,3,4,2,6,3,9,0,5,2,6,4,8,1)
hist(data,xlab='weight',col='red',
     border='black',xlim=c(0,40),ylim=c(0,5),breaks=5)

#box plot
#input<-mtcars[,c('mpg','cyl')]
boxplot(mpg~cyl,data=mtcars,xlab='number of cylinders',
        ylab='miles per gallon',main='mileage data')

