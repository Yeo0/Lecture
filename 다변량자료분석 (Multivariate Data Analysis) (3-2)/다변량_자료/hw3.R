<<<<<<< HEAD
install.packages("knitr")
library(knitr)
data=read.csv("C:\\Users\\wooli\\Desktop\\data.csv",header=F)
data=data[,-1]
names=c("sweat rate","sodium content","potassium content")
colnames(data)<-names
data


## 1. Compute the sample mean vector , the sample covariance matrix, , and the sample correlation matrix R using SAS insight.
one=rep(1,20)
x_bar=(1/20)*t(data)%*%one #sample mean vector  
colnames(x_bar)="means"


x_bartest=c(mean(data[,1]),mean(data[,2]),mean(data[,3])) #sample mean vector test

x_cov=cov(data) #sample covariance matrix


# 
# mean1<-mean(data[,1])
# mean2<-mean(data[,2])
# mean3<-mean(data[,3])
# x_bartest=matrix(c(mean1,mean2,mean3),nrow=3)
# x_bartest
# 
# covtest<-(as.matrix(data-x_bartest))%*%t(data-x_bartest)


central=diag(20)-((1/20)*one%*%t(one))
x_cov=t(data)%*%central%*%as.matrix(data) 
x_samcov=(1/19)*x_cov #sample covariance matrix


cal_s=1/sqrt(diag(diag(x_samcov)))
cal_s[is.infinite(cal_s)]<-0
cal_s
x_samcorr=cal_s%*%x_samcov%*%cal_s #sample correlation matrix

diag(x_samcov)%*%t(diag(x_samcov)) #sample variance ^2

x_corr


# install.packages("expm")
# library(expm)
# diag(x_samcov)
# x_samroot=sqrtm(x_samcov)
# x_samroot
# root_v=diag(sqrt(diag(x_samroot)))
# root_v
# x_corr=root_v%*%x_cov%*%root_v #sample correlation matrix

x_bar
x_samcov
x_samcorr


## 2. Use SAS insight to prepare the scatter plot matrix for these three variables.
# opar<-par(no.readonly = T)
# par(mfrow=c(1,3))
# data
# ?plot
# sweat_rate=data$`sweat rate`
# sodium_content=data$`sodium content`
# potassium_content=data$`potassium content`
# 
# plot(sweat_rate,sodium_content,main="scsweat_rate")
# plot(sodium_content,potassium_content)
# plot(potassium_content,sweat_rate)
# 
# ?pairs

pairs(data, main="Scatter plot matrix for 'Sweat data'", cex.main=1.5)


## 3. Prepare q-q plots for each of the variables and comment on the assumption of normality for these variables.

sweat_rate=data$`sweat rate`
sodium_content=data$`sodium content`
potassium_content=data$`potassium content`
 
qqplot(sweat_rate,sodium_content, main="Q-Q plot of 'sweat rate' and 'sodium content'",cex=2,pch=19 )
qqplot(sodium_content,potassium_content, main="Q-Q plot of 'sodium content' and 'potassium content'",cex=2,pch=19)
qqplot(potassium_content,sweat_rate, main="Q-Q plot of 'potassium content' and'sweat rate'",cex=2, pch=19)

shapiro.test(sweat_rate)
shapiro.test(sodium_content)
shapiro.test(potassium_content)


## 4. Prepare the appropriate plots for examining the assumption of bivariate normality for each pair of variables and comment.


# dchisq gives the density 
# pchisq gives the distribution function
# qchisq gives the quantile function
# rchisq generates random deviates.

?dchisq
plot(dchisq(sweat_rate,df=3))
par(new=F)
par(mfrow=c(1,1))

boxplot(data, main="Boxplot of 'Sweat data'")

par(mfrow=c(1,3))
hist(sweat_rate, main="Histogram of 'Sweat rate'")
hist(sodium_content, main="Histogram of 'Sodium content'")
hist(potassium_content, main="Histogram of 'Potassium content'")


## 5. Prepare the appropriate plots for checking for tri-variate normality and comment.

install.packages("MVN")
library(MVN)

par(mfrow=c(1,1))
hzTest(data,cov=T,qqplot=T)

# uniPlot(data, type = "qqplot") 
# uniPlot(data, type = "histogram")
# 
# ?hzTest

=======
install.packages("knitr")
library(knitr)
data=read.csv("C:\\Users\\wooli\\Desktop\\data.csv",header=F)
data=data[,-1]
names=c("sweat rate","sodium content","potassium content")
colnames(data)<-names
data


## 1. Compute the sample mean vector , the sample covariance matrix, , and the sample correlation matrix R using SAS insight.
one=rep(1,20)
x_bar=(1/20)*t(data)%*%one #sample mean vector  
colnames(x_bar)="means"


x_bartest=c(mean(data[,1]),mean(data[,2]),mean(data[,3])) #sample mean vector test

x_cov=cov(data) #sample covariance matrix


# 
# mean1<-mean(data[,1])
# mean2<-mean(data[,2])
# mean3<-mean(data[,3])
# x_bartest=matrix(c(mean1,mean2,mean3),nrow=3)
# x_bartest
# 
# covtest<-(as.matrix(data-x_bartest))%*%t(data-x_bartest)


central=diag(20)-((1/20)*one%*%t(one))
x_cov=t(data)%*%central%*%as.matrix(data) 
x_samcov=(1/19)*x_cov #sample covariance matrix


cal_s=1/sqrt(diag(diag(x_samcov)))
cal_s[is.infinite(cal_s)]<-0
cal_s
x_samcorr=cal_s%*%x_samcov%*%cal_s #sample correlation matrix

diag(x_samcov)%*%t(diag(x_samcov)) #sample variance ^2

x_corr


# install.packages("expm")
# library(expm)
# diag(x_samcov)
# x_samroot=sqrtm(x_samcov)
# x_samroot
# root_v=diag(sqrt(diag(x_samroot)))
# root_v
# x_corr=root_v%*%x_cov%*%root_v #sample correlation matrix

x_bar
x_samcov
x_samcorr


## 2. Use SAS insight to prepare the scatter plot matrix for these three variables.
# opar<-par(no.readonly = T)
# par(mfrow=c(1,3))
# data
# ?plot
# sweat_rate=data$`sweat rate`
# sodium_content=data$`sodium content`
# potassium_content=data$`potassium content`
# 
# plot(sweat_rate,sodium_content,main="scsweat_rate")
# plot(sodium_content,potassium_content)
# plot(potassium_content,sweat_rate)
# 
# ?pairs

pairs(data, main="Scatter plot matrix for 'Sweat data'", cex.main=1.5)


## 3. Prepare q-q plots for each of the variables and comment on the assumption of normality for these variables.

sweat_rate=data$`sweat rate`
sodium_content=data$`sodium content`
potassium_content=data$`potassium content`
 
qqplot(sweat_rate,sodium_content, main="Q-Q plot of 'sweat rate' and 'sodium content'",cex=2,pch=19 )
qqplot(sodium_content,potassium_content, main="Q-Q plot of 'sodium content' and 'potassium content'",cex=2,pch=19)
qqplot(potassium_content,sweat_rate, main="Q-Q plot of 'potassium content' and'sweat rate'",cex=2, pch=19)

shapiro.test(sweat_rate)
shapiro.test(sodium_content)
shapiro.test(potassium_content)


## 4. Prepare the appropriate plots for examining the assumption of bivariate normality for each pair of variables and comment.


# dchisq gives the density 
# pchisq gives the distribution function
# qchisq gives the quantile function
# rchisq generates random deviates.

?dchisq
plot(dchisq(sweat_rate,df=3))
par(new=F)
par(mfrow=c(1,1))

boxplot(data, main="Boxplot of 'Sweat data'")

par(mfrow=c(1,3))
hist(sweat_rate, main="Histogram of 'Sweat rate'")
hist(sodium_content, main="Histogram of 'Sodium content'")
hist(potassium_content, main="Histogram of 'Potassium content'")


## 5. Prepare the appropriate plots for checking for tri-variate normality and comment.

install.packages("MVN")
library(MVN)

par(mfrow=c(1,1))
hzTest(data,cov=T,qqplot=T)

# uniPlot(data, type = "qqplot") 
# uniPlot(data, type = "histogram")
# 
# ?hzTest

>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
