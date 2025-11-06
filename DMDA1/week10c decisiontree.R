

data("iris")



install.packages("caret")

install.packages("C50")



library(caret)

library(C50)



set.seed(7)


inTraininglocal<-createDataPartition(iris$Species,p=.70,list = F)

inTraininglocal

training<-iris[inTraininglocal,]

testing<-iris[-inTraininglocal,]




model<-C5.0(Species~.,data = training)



summary(model)



pred<-predict.C5.0(model,testing[,-5]) #type ="prob"

pred


a<-table(testing$Species,pred)

sum(diag(a))/sum(a)



plot(model)