###################### 
startup1 <- read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Multi Linear Regression\\50_Startups.csv') 

startup <- startup1[,-c(4)]

#Model Building
#Regression Model and Summary
model.startup<-lm(Profit~.,data = startup)
summary(model.startup)
car::vif(model.startup)

#Diagnostic Plots: 
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted 
plot(model.startup)

#Residuals vs Regressors
library(car)
residualPlots(model.startup)
#Added Variable Plots
avPlots(model.startup)
#QQ plots of studentized residuals
qqPlot(model.startup)
influenceIndexPlot(model.startup) # Index Plots of the influence measures 

####Iteration 1  
#Remove 50th observation
startup1<-startup[-50,]
model1<-lm(Profit~.,data = startup1)
summary(model1)
car::vif(model1) 
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1) 

#iteration2
startup2<-startup[-c(50,49,47),]
model2<-lm(Profit~.,data = startup2)
summary(model2)
car::vif(model2) 
plot(model2)
residualPlots(model2)
qqPlot(model2)
influenceIndexPlot(model2)


#iteration3
startup3<-startup[-c(50,49,47,46,15),]
model3<-lm(Profit~.,data = startup3)
summary(model3)
car::vif(model3) 
plot(model3)
residualPlots(model3)
qqPlot(model3)
influenceIndexPlot(model3)

#iteration4
startup4<-startup[-c(50,49,47,46,15,37,28),]
model4<-lm(Profit~.,data = startup4)
summary(model4)
car::vif(model4) 
plot(model4)
residualPlots(model4)
qqPlot(model4)
influenceIndexPlot(model4)

#iteration5
startup5<-startup[-c(50,49,47,46,15,37,28,20),]
model5<-lm(Profit~.,data = startup5)
summary(model5)
car::vif(model5) 
plot(model5)
residualPlots(model5)
qqPlot(model5)
influenceIndexPlot(model5)



