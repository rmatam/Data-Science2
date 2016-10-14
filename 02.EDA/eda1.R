library(rpart)
library(ggplot2)
setwd("E:\\Kaggle\\titanic\\data")
titanic_train1 = read.csv("train.csv")
titanic_train1
str(titanic_train1)
dim(titanic_train1)
titanic_train1$Survived
str(titanic_train1$Survived)
titanic_train1$Survived=as.factor(titanic_train1$Survived)
titanic_train1$Pclass=as.factor(titanic_train1$Pclass)
titanic_train1$Name=as.factor(titanic_train1$Name)

#univariate EDA
#categorical values
x11()
xtabs(formula = ~Survived,data= titanic_train1)
summary(titanic_train1$Survived)
ggplot(titanic_train1)+geom_bar(aes(x=Survived))

summary(titanic_train1$Sex)
ggplot(titanic_train1)+geom_bar(aes(x=Sex))

summary(titanic_train1$Pclass)
ggplot(titanic_train1)+geom_bar(aes(x=Pclass))

summary(titanic_train1$Embarked)
ggplot(titanic_train1)+geom_bar(aes(x=Embarked))

summary(titanic_train1$Parch)
ggplot(titanic_train1)+geom_bar(aes(x=Parch))

#numerical variables
summary(titanic_train1$Fare)
ggplot(titanic_train1)+geom_histogram(aes(x=Fare),fill="red",colour = "black")
ggplot(titanic_train1)+geom_boxplot(aes(x=factor(0),y=Fare),fill="red",colour="black")
ggplot(titanic_train1)+geom_density(aes(x=Fare),fill="red",colour="blue")

summary(titanic_train1$Age)
ggplot(titanic_train1)+geom_histogram(aes(x=Age),fill="red",colour = "black")
ggplot(titanic_train1)+geom_boxplot(aes(x=factor(0),y=Age),fill="red",colour="black")
ggplot(titanic_train1)+geom_density(aes(x=Age),fill="red",colour="blue")

#bi variate EDA
#c-c relationships
x11()
xtabs(formula = ~Survived+Sex,data = titanic_train1)
ggplot(titanic_train1)+geom_bar(aes(x=Sex, fill=Survived))
ggplot(titanic_train1)+geom_bar(aes(x=Survived, fill=Sex))

xtabs(formula = ~Survived+Pclass,data = titanic_train1)
ggplot(titanic_train1)+geom_bar(aes(x=Pclass, fill=Survived))
ggplot(titanic_train1)+geom_bar(aes(x=Survived, fill=Pclass))

xtabs(formula = ~Survived+Embarked,data = titanic_train1)
ggplot(titanic_train1)+geom_bar(aes(x=Embarked, fill=Survived))
ggplot(titanic_train1)+geom_bar(aes(x=Survived, fill=Embarked))

#N-C relationships
ggplot(titanic_train1) + geom_boxplot(aes(x = Survived, y = Age))
ggplot(titanic_train1) + geom_histogram(aes(x = Age),fill = "white", colour = "black") + facet_grid(Survived ~ .)
