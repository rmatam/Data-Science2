#Explort plot by using function

library(datasets)
with(faithful,plot(eruptions,waiting))
title(main = "Old faithful geyser data")
dev.copy(png,file = "mypngplot1.png")
dev.off()


#Base Graphics paramemters
par("lty")
par("mar")
par("mfrow")
par("mfcol")
