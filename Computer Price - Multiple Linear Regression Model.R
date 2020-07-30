######################
computers <- read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Multi Linear Regression\\Computer_Data_r.csv')

computer <- computers[,-c(1)]

#Model Building
#Regression Model and Summary
model<-lm(price~.,data = computer)
summary(model)
car::vif(model)

#Diagnostic Plots: 
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted 
plot(model)

#Residuals vs Regressors
library(car)
residualPlots(model)
#Added Variable Plots
avPlots(model)
#QQ plots of studentized residuals
qqPlot(model)
influenceIndexPlot(model) # Index Plots of the influence measures 

####Iteration 1  
computer1<-computer[-c(1441,1701),]
model1<-lm(price~.,data = computer1)
summary(model1)
car::vif(model1) 
plot(model1)
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1) 

####Iteration 2  
computer2<-computer[-c(1441,1701,994,20,25,3784,4478),]
model2<-lm(price~.,data = computer2)
summary(model2)
car::vif(model2) 
plot(model2)
residualPlots(model2)
qqPlot(model2)
influenceIndexPlot(model2) 

####Iteration 3  
computer3<-computer[-c(1441,1701,994,20,25,3784,4478,982,5961,28,310),]
model3<-lm(price~.,data = computer3)
summary(model3)
car::vif(model3) 
plot(model3)
residualPlots(model3)
qqPlot(model3)
influenceIndexPlot(model3) 

####Iteration 4  
computer4<-computer[-c(1441,1701,994,20,25,3784,4478,982,5961,28,310,1043,208,314,1689,1785),]
model4<-lm(price~.,data = computer4)
summary(model4)
car::vif(model4) 
plot(model4)
residualPlots(model4)
qqPlot(model4)
influenceIndexPlot(model4) 

####Iteration 5  
computer5<-computer[-c(1441,1701,994,20,25,3784,4478,982,5961,28,310,1043,208,314,1689,1785,1123,175,224,721,1049),]
model5<-lm(price~.,data = computer5)
summary(model5)
car::vif(model5) 
plot(model5)
residualPlots(model5)
qqPlot(model5)
influenceIndexPlot(model5)
