#question 1 Knn, k=3
TrainB<-read.csv("C:/Users/wyd15/Downloads/TrainB.csv")
TestB<-read.csv("C:/Users/wyd15/Downloads/TestB.csv")
library(class)
library(MASS)
attach(TrainB)
train.Direction=concrete.block
set.seed(104881130)
names(TrainB)
dim(TrainB)
sum(is.na(TrainB))
sum(is.na(TestB))
TrainB=na.omit(TrainB)
var(standardized.X[,1])
standardized.X=scale(TrainB[,-14])
train.X=cbind(price,land.acres)[TrainB,]
test.X=cbind(price,land.acres)[TestA,]
test.X=scale(TestB[,-14])
train.Y=rep("1",4485)
train.concrete=concrete.block[TrainB]
#(TrainB$concrete.block=="1")
test.Y=(TestB$concrete.block=="1")
knn.pred=knn(train.X,test.X,train.concrete,k=3)
mean(test.Y!=knn.pred)
sum(train)
table(knn.pred,test.Y)
#the question in the book 4.7.13
summary(TrainB)

