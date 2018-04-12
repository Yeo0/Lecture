<<<<<<< HEAD
data(iris)


newiris=iris[51:150,]

sl=newiris$Sepal.Length*10
sw=newiris$Sepal.Width*10
pl=newiris$Petal.Length*10
pw=newiris$Petal.Width*10
sp=as.numeric(newiris$Species)
sp=newiris$Species
niris=data.frame(sl,sw,pl,pw,sp)
niris

install.packages("MASS")
library(MASS)

index<-sample(2,size=nrow(niris), replace=T, prob=c(0.7,0.3))
train<-niris[index==1,]
test<-niris[index==2,]
flda<-lda(sp~.,data=train)
flda
fts1<-predict(flda, newdata=test)

tab1 <- table(test$sp, fts1$class)
mclda <- 1-sum(diag(tab1))/sum(tab1)
flda
tab1
mclda



#Quadratic
fqda <- qda(sp~.,data=train)
fts2 <- predict(fqda,newdata=test)
tab2 <- table(test$sp,fts2$class)
mcqda <- 1-sum(diag(tab2))/sum(tab2)
fqda
tab2
mcqda
?qda



newd=data.frame(sl=60,sw=25,pl=40,pw=11)
predict(flda, newdata = newd)




=======
data(iris)


newiris=iris[51:150,]

sl=newiris$Sepal.Length*10
sw=newiris$Sepal.Width*10
pl=newiris$Petal.Length*10
pw=newiris$Petal.Width*10
sp=as.numeric(newiris$Species)
sp=newiris$Species
niris=data.frame(sl,sw,pl,pw,sp)
niris

install.packages("MASS")
library(MASS)

index<-sample(2,size=nrow(niris), replace=T, prob=c(0.7,0.3))
train<-niris[index==1,]
test<-niris[index==2,]
flda<-lda(sp~.,data=train)
flda
fts1<-predict(flda, newdata=test)

tab1 <- table(test$sp, fts1$class)
mclda <- 1-sum(diag(tab1))/sum(tab1)
flda
tab1
mclda



#Quadratic
fqda <- qda(sp~.,data=train)
fts2 <- predict(fqda,newdata=test)
tab2 <- table(test$sp,fts2$class)
mcqda <- 1-sum(diag(tab2))/sum(tab2)
fqda
tab2
mcqda
?qda



newd=data.frame(sl=60,sw=25,pl=40,pw=11)
predict(flda, newdata = newd)




>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
