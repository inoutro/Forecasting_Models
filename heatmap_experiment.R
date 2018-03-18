# experiment
rm(list=ls())


library(colorRamps)
library(forecast)
library(ggplot2)
library(RColorBrewer)
library(lattice)
library(reshape2)


setwd("C:/Users/korea/Desktop/수업/예측모델/team_project/heatmap_data/experiment")


aic.mat <- read.csv("../si_heatmap.csv")
aic.mat[aic.mat == 0] <- max(aic.mat)
aic.mat2 <- as.matrix(aic.mat)
f <- function(m) t(m)[,nrow(m):1]

data_all_min = min(aic.mat2)
data_all_max = max(aic.mat2)



levelplot(f(aic.mat2),xlab = "asd", ylab = "qwe",region=T,colorkey=T, col.regions= colorRampPalette(brewer.pal(11, "RdBu"))(25))



for(i in 1:12){
  asd <- as.character(i)
  name = paste("data_", asd, sep = "")
  print(name)
  file_name = paste("si_1.", asd, ".csv", sep = "")
  
  assign(name, as.matrix(assign(name, read.csv(file_name, row.names = "X"))))
}


data_1[data_1 == 0] <- max(aic.mat2)
data_2[data_2 == 0] <- max(aic.mat2)
data_3[data_3 == 0] <- max(aic.mat2)
data_4[data_4 == 0] <- max(aic.mat2)
data_5[data_5 == 0] <- max(aic.mat2)
data_6[data_6 == 0] <- max(aic.mat2)
data_7[data_7 == 0] <- max(aic.mat2)
data_8[data_8 == 0] <- max(aic.mat2)
data_9[data_9 == 0] <- max(aic.mat2)
data_10[data_10 == 0] <- max(aic.mat2)
data_11[data_11 == 0] <- max(aic.mat2)
data_12[data_12 == 0] <- max(aic.mat2)


levelplot(s, layout=c(3, 2), index.cond=list(c(1, 3, 5, 2, 4, 6)))


plot.new()
par(mfrow = c(2,2))

print(levelplot(f(data_1),xlab = "asd", ylab = "qwe",at=seq(min(aic.mat2), max(aic.mat2), length.out=24),region=T,colorkey=T, col.regions= colorRampPalette(brewer.pal(11, "RdBu"))(25)))
print(levelplot(f(data_2),xlab = "asd", ylab = "qwe",at=seq(min(aic.mat2), max(aic.mat2), length.out=24),region=T,colorkey=T, col.regions= colorRampPalette(brewer.pal(11, "RdBu"))(25)))

plot.new()
par(mfrow=c(2,2), oma=c(2,0,2,0))
print(levelplot(f(data_1),xlab = "asd", ylab = "qwe",at=seq(min(aic.mat2), max(aic.mat2), length.out=24),region=T,colorkey=T, col.regions= colorRampPalette(brewer.pal(11, "RdBu"))(25)), split=c(1, 1, 2, 2)) 
print(levelplot(f(data_2),xlab = "asd", ylab = "qwe",at=seq(min(aic.mat2), max(aic.mat2), length.out=24),region=T,colorkey=T, col.regions= colorRampPalette(brewer.pal(11, "RdBu"))(25)), split=c(1, 2, 2, 2), newpage=FALSE)
print(levelplot(f(data_3),xlab = "asd", ylab = "qwe",at=seq(min(aic.mat2), max(aic.mat2), length.out=24),region=T,colorkey=T, col.regions= colorRampPalette(brewer.pal(11, "RdBu"))(25)), split=c(2, 1, 2, 2), newpage=FALSE)
print(levelplot(f(data_4),xlab = "asd", ylab = "qwe",at=seq(min(aic.mat2), max(aic.mat2), length.out=24),region=T,colorkey=T, col.regions= colorRampPalette(brewer.pal(11, "RdBu"))(25)), split=c(2, 2, 2, 2), newpage=FALSE)
title("Centered Overall Title", outer=TRUE)
mtext(side=1, "Centered Subtitle", outer=TRUE)






