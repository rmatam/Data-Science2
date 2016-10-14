set.seed(1234)
par(mar=c(0,0,0,0))
x<-rnorm(12,mean = rep(1:3,each=4),sd = 0.2)
y<-rnorm(12,mean = rep(1,2,1,each=4),sd = 0.2)
plot(x,y,col="blue",pch= 19,cex=2)
text(x+0.05,y+0.05,labels = as.character(1:12))

dataframe=data.frame(x,y)
kmeansobject=kmeans(dataframe,centers = 3)
names(kmeansobject)
kmeansobject$cluster


par(mar=rep(0.2,4))
plot(x,y,col=kmeansobject$cluster,pch=19,cex=2)
points(kmeansobject$centers,col=1:3,pch=3,cex=3,lwd=3)
