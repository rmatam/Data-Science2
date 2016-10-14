#base plot system
library(datasets)
data("cars")
str(cars)
cars$Mileage
cars$Cylinder
with(cars,plot(Mileage,Price))
 
# lattice plot system
library(lattice)
state <-data.frame(state.x77,region=state.region)
xyplot(Life.Exp~Income|region,data = state,layout=c(4,1))

#ggplot2 system
library(ggplot2)
data("mpg")
qplot(displ,hwy,data = mpg)

#Graphics device
windows()

#plot get created
pdf(file = "myplot.pdf")
with(faithful,plot(eruptions,waiting))
title(main = "Old faithful geyser data")
dev.off()

#PNG plotting creation
png(file = "mypngplot.png")
with(faithful,plot(eruptions,waiting))
title(main = "Old faithful geyser data")
dev.off()

#JPEG plotting creation
jpeg(file = "myjpegplot.jpeg")
with(faithful,plot(eruptions,waiting))
title(main = "Old faithful geyser data")
dev.off()
