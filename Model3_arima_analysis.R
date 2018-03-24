library('ggplot2')
library('tseries')
library(forecast)
library(RColorBrewer)
library(lattice)
setwd("C:/Users/korea/Desktop/수업/예측모델/team_project/part2_data")
getwd()

si<-read.csv("anguk_wndtime_off.csv",header = F)


si$hour<-c(1:1280)
# "#0072B2" 짙은 파랑
p<-ggplot(si, aes(hour, V2)) + geom_line(color="black" ,size=1) +  
  xlab("")+ylab("하차량") +theme_minimal() + ggtitle("시청역")

train<-ts(si[1:1160,2])
test<-ts(si[1161:1280,2] )

par(mfrow=c(2,1))

acf(train);pacf(train)
# 20 주기


acf(diff(train))
pacf(diff(train))


acf(diff(train,lag=10))
pacf(diff(train,lag=10))


acf(diff(train,lag=40))
pacf(diff(train,lag=40))

auto.arima((train))
auto.arima(diff(train))
auto.arima(diff(train,lag=40))


# arim( )


Arima(train,order=c(3,1,0),method="CSS-ML", 
      seasonal = list(order=c(1,0,2),period=40))

Arima(train,order=c(3,0,4),method="CSS-ML", 
      seasonal = list(order=c(1,0,2),period=40))
