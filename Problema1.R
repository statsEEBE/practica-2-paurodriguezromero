#Codigo para problema 1
rm(list=ls())
misdades<-iris #Le llamamos misdades a nuestra base de datos
#Por comodidad previamente nombramos a cada columna de nuestra base de datos
sepallength<-misdades$Sepal.Length
sepalwidth<-misdades$Sepal.Width
petallength<-misdades$Petal.Length
petalwidth<-misdades$Petal.Width
species<-misdades$Species

#Para ver como varia el petallength segun el sepallength graficamos
plot(petallength,sepallength)

#Calculamos m y b de la regresion lineal

#Primero debemos saber la media de cada x y
x_bar<-mean(petallength)
y_bar<-mean(sepallength)

m<-sum((petallength-x_bar)*(sepallength-y_bar))/sum((petallength-x_bar)^2)
b<-y_bar-m*x_bar

#Dibujamos la linea de regresion lineal
xpred<-petallength
ypred<-m*xpred+b
plot(petallength,sepallength)
lines(xpred,ypred)

#Coeficiente de determinación:
Rsq<-sum((ypred-y_bar)^2)/sum((sepallength-y_bar)^2)
#Coefieciente de correlación
cor<-sqrt(Rsq)

#Manera mas rapida de calcularlo todo
mod<-lm(sepallength~petallength)
summary(mod)
#Predicción sin calcular nada previamente de coefcientes
cor.test(petallength,sepallength)
y_pred2<-predict(mod,data.frame(petallength=1.5))
