setwd("F:r1project")
read.csv("Cardiotocographic.csv")
View(Cardiotocographic)
str(Cardiotocographic)
Cardiotocographic$NSP=as.ordered(Cardiotocographic$NSP)
str(Cardiotocographic)
pairs(Cardiotocographic[3:10])
summary(data)
#partion of data
prince=sample(2,nrow(Cardiotocographic),replace = TRUE,prob = c(0.8,0.2))
train<-Cardiotocographic[prince==1,]
test<-Cardiotocographic[prince==2,]
#ordinal logistic regression or proportional odds logistic regression
library(MASS)
model<-polr(NSP~BPM+APC+FMPS,train,Hess = TRUE)
summary(model)
# p value calculation
ctab<-coef(summary(model))
p<-pnorm(abs(ctable[, "t value"],lower.tail = FALSE)*2
         
          