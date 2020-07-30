###################### 
Cars1 <- read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Multi Linear Regression\\ToyotaCorolla.csv')

Cars <- Cars1[c("Price","Age_08_04","KM","HP","cc","Doors","Gears","Quarterly_Tax","Weight")]

#Model Building
#Regression Model and Summary
model.car<-lm(Price~.,data = Cars)
summary(model.car)
car::vif(model.car)

#Diagnostic Plots: 
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted 
plot(model.car)

#Residuals vs Regressors
library(car)
residualPlots(model.car)
#Added Variable Plots
avPlots(model.car)
#QQ plots of studentized residuals
qqPlot(model.car)
influenceIndexPlot(model.car) # Index Plots of the influence measures 

####Iteration 1  
#Remove 81th observation
Cars1<-Cars[-81,]
model1<-lm(Price~.,data = Cars1)
summary(model1)
car::vif(model1) 
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1) 

#iteration2
Cars2<-Cars[-c(81,222,961),]
model2<-lm(Price~.,data = Cars2)
summary(model2)
car::vif(model2) 
plot(model2)
residualPlots(model2)
qqPlot(model2)
influenceIndexPlot(model2)

#iteration3
Cars3<-Cars[-c(81,222,961,602,148),]
model3<-lm(Price~.,data = Cars3)
summary(model3)
car::vif(model3) 
plot(model3)
residualPlots(model3)
qqPlot(model3)
influenceIndexPlot(model3)

#iteration4
Cars4<-Cars[-c(81,222,961,602,148,655,524),]
model4<-lm(Price~.,data = Cars4)
summary(model4)
car::vif(model4) 
plot(model4)
residualPlots(model4)
qqPlot(model4)
influenceIndexPlot(model4)

#iteration5
Cars5<-Cars[-c(81,222,961,602,148,655,524,193,192,992),]
model5<-lm(Price~.,data = Cars5)
summary(model5)
car::vif(model5) 
plot(model5)
residualPlots(model5)
qqPlot(model5)
influenceIndexPlot(model5)




