#Remove list of objects
rm(list=ls())

#Load the Breast cancer csv file by replacing ? with NA by using na.strings
data<-read.csv("breast-cancer-wisconsin.data.csv",na.strings =c("?") )

#attach data
attach(data)

#install packages for c50
install.packages("C50")
library('C50')

#view dataset
View(data)

data$Class<-as.factor(data$Class)

#call c5.0 for tree model
myTree<-C5.0(Class~ F1+F2+F3+F4+F5+F6+F7+F8+F9, data=data)

#print result summary for mytree
summary(myTree)

#print myTree
myTree

#plot my tree
plot(myTree)
