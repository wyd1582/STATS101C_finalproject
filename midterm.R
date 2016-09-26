---
title: "midterm.yudiwang.UID104881130"
author: "yudi.wang"
date: "May 9, 2016"
output: pdf_document
---
library(class)
attach(TrainB)
train.Direction=concrete.block[TrainB]
set.seed(104881130)
knn.pred2=knn(train.X,test.X,train.Direction,k=3)
table(knn.pred2,Direction.2005)
mean(knn.pred2==Direction.2005)

