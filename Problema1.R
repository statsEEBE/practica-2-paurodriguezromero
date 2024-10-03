#Codigo para problema 1
rm(list=ls())
rsq<-0.1923
cor<-sqrt(rsq)
cor
m=0.0657
#prediccion
m<-0.0658
b<-11.798
x<-647.1
y=m*x+b
xpred<-0:700
ypred=m*xpred+b
plot(c(0,700),c(0,120))
lines(xpred,ypred)
