<<<<<<< HEAD
tui <- read.csv(file.choose(), header=T)

plot(tui[,5], type="l",lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60))


plot(diff(log(tui[,5])),type="l")

hist(diff(tui[,4]),prob=T,ylim=c(0,0.6),xlim=c(-5,5),col="red")
lines(density(diff(tui[,4])),lwd=2)

mu<-mean(diff(tui[,4]))
sigma<-sd(diff(tui[,4]))

x<-seq(-4,4,length=100)
y<-dnorm(x,mu,sigma)
lines(x,y,lwd=2,col="blue")
qqnorm(diff(tui[,4]))

x<-diff(log(tui[,5]))
ks.test(x,"pnorm",mean(x),sd(x))

#shapiro.test(x)

#library(ts)
plot(tui[,5],type="l")
tui.1 <- filter(tui[,5],filter=rep(1/5,5))
tui.2 <- filter(tui[,5],filter=rep(1/25,25))
tui.3 <- filter(tui[,5],filter=rep(1/81,81))
lines(tui.1,col="red")
lines(tui.2,col="purple")
lines(tui.3,col="blue")


beer<-read.csv(file.choose(),header=T)
beer<-ts(beer[,1],start=1956,freq=12)
HoltWinters(beer)

plot(beer)
m<-HoltWinters(beer)
lines(fitted(m)[,1],col=2)
#lines(HoltWinters(beer)$fitted,col="red")

predict(m,n.ahead=12)




plot(HoltWinters(beer)$fitted)



plot(stl(log(beer),s.window="periodic"))

lbeer<-log(beer)
t<-seq(1956,1995.2,length=length(beer))
t2<-t^2
plot(lbeer)
lm(lbeer~t+t2)
lines(t,lm(lbeer~t+t2)$fit,col=2,lwd=2)

lbeer<-log(beer)
t<-seq(1956,1995.2,length=length(beer))
t2<-t^2
sin.t<-sin(2*pi*t)
cos.t<-cos(2*pi*t)
plot(lbeer)
lines(t,lm(lbeer~t+t2+sin.t+cos.t)$fit,col=4)

summary(lm(lbeer~t+t2+sin.t+cos.t))


sim.ar<-arima.sim(list(ar=c(0.4,0.4)),n=1000)
sim.ma<-arima.sim(list(ma=c(0.6,-0.4)),n=1000)
par(mfrow=c(2,2))
acf(sim.ar,main="ACF of AR(2) process")
acf(sim.ma,main="ACF of MA(2) process")
pacf(sim.ar,main="PACF of AR(2) process")
pacf(sim.ma,main="PACF of MA(2) process")

data(LakeHuron)
fit<-arima(LakeHuron,order=c(1,0,1))
fit

fit<-arima(LakeHuron,order=c(1,0,1))
tsdiag(fit)

Box.test(fit$residuals,lag=1)


tt<-seq(1973,1980)
fit<-arima(LakeHuron,order=c(1,0,1))
LH.pred<-predict(fit,n.ahead=8)
plot(LakeHuron,xlim=c(1875,1980),ylim=c(575,584))
LH.pred<-predict(fit,n.ahead=8)
lines(tt,LH.pred$pred,col="red")
lines(tt,LH.pred$pred+2*LH.pred$se,col="red",lty=3)
lines(tt,LH.pred$pred-2*LH.pred$se,col="red",lty=3)



##SARIMA

#================================================================================
#
# PART  1:  ACF and PACF function of mixed seasonal model 
# 	    ARMA(0,1)X(1,0)_12
#
#================================================================================


phi=c(rep(0,11),0.8) 
acf=ARMAacf(ar=phi,ma=-0.5,50)
pacf=ARMAacf(ar=phi,ma=-0.5,50,pacf=T)
par(mfrow=c(1,2))

plot(acf,type="h",xlab="lag")
abline(h=0)

plot(pacf,type="h",xlab="lag")
abline(h=0)



#================================================================================
#
# PART  2:  Analysis of Monthly Federal Researve Board Production Index 
#           (1948-1978, n=372 monthes) 
# 	   
#================================================================================


prod=scan(file.choose())
par(mfrow=c(2,1))
acf(prod, 48)
pacf(prod, 48)


par(mfrow=c(2,1))
acf(diff(prod), 48)
pacf(diff(prod), 48)



par(mfrow=c(2,1))
acf(diff(diff(prod),12), 48)
pacf(diff(diff(prod),12), 48)


#================================================================================
#
# Fit the model SARIMA(1,1,1)X(2,1,1)_{12}
#
#==============================================================================


prodfit3=arima(prod, order=c(1,1,1), seasonal=list(order=c(2,1,1), period=12))
prodfit3 
tsdiag(prodfit3, gof.lag=48)





=======
tui <- read.csv(file.choose(), header=T)

plot(tui[,5], type="l",lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60))


plot(diff(log(tui[,5])),type="l")

hist(diff(tui[,4]),prob=T,ylim=c(0,0.6),xlim=c(-5,5),col="red")
lines(density(diff(tui[,4])),lwd=2)

mu<-mean(diff(tui[,4]))
sigma<-sd(diff(tui[,4]))

x<-seq(-4,4,length=100)
y<-dnorm(x,mu,sigma)
lines(x,y,lwd=2,col="blue")
qqnorm(diff(tui[,4]))

x<-diff(log(tui[,5]))
ks.test(x,"pnorm",mean(x),sd(x))

#shapiro.test(x)

#library(ts)
plot(tui[,5],type="l")
tui.1 <- filter(tui[,5],filter=rep(1/5,5))
tui.2 <- filter(tui[,5],filter=rep(1/25,25))
tui.3 <- filter(tui[,5],filter=rep(1/81,81))
lines(tui.1,col="red")
lines(tui.2,col="purple")
lines(tui.3,col="blue")


beer<-read.csv(file.choose(),header=T)
beer<-ts(beer[,1],start=1956,freq=12)
HoltWinters(beer)

plot(beer)
m<-HoltWinters(beer)
lines(fitted(m)[,1],col=2)
#lines(HoltWinters(beer)$fitted,col="red")

predict(m,n.ahead=12)




plot(HoltWinters(beer)$fitted)



plot(stl(log(beer),s.window="periodic"))

lbeer<-log(beer)
t<-seq(1956,1995.2,length=length(beer))
t2<-t^2
plot(lbeer)
lm(lbeer~t+t2)
lines(t,lm(lbeer~t+t2)$fit,col=2,lwd=2)

lbeer<-log(beer)
t<-seq(1956,1995.2,length=length(beer))
t2<-t^2
sin.t<-sin(2*pi*t)
cos.t<-cos(2*pi*t)
plot(lbeer)
lines(t,lm(lbeer~t+t2+sin.t+cos.t)$fit,col=4)

summary(lm(lbeer~t+t2+sin.t+cos.t))


sim.ar<-arima.sim(list(ar=c(0.4,0.4)),n=1000)
sim.ma<-arima.sim(list(ma=c(0.6,-0.4)),n=1000)
par(mfrow=c(2,2))
acf(sim.ar,main="ACF of AR(2) process")
acf(sim.ma,main="ACF of MA(2) process")
pacf(sim.ar,main="PACF of AR(2) process")
pacf(sim.ma,main="PACF of MA(2) process")

data(LakeHuron)
fit<-arima(LakeHuron,order=c(1,0,1))
fit

fit<-arima(LakeHuron,order=c(1,0,1))
tsdiag(fit)

Box.test(fit$residuals,lag=1)


tt<-seq(1973,1980)
fit<-arima(LakeHuron,order=c(1,0,1))
LH.pred<-predict(fit,n.ahead=8)
plot(LakeHuron,xlim=c(1875,1980),ylim=c(575,584))
LH.pred<-predict(fit,n.ahead=8)
lines(tt,LH.pred$pred,col="red")
lines(tt,LH.pred$pred+2*LH.pred$se,col="red",lty=3)
lines(tt,LH.pred$pred-2*LH.pred$se,col="red",lty=3)



##SARIMA

#================================================================================
#
# PART  1:  ACF and PACF function of mixed seasonal model 
# 	    ARMA(0,1)X(1,0)_12
#
#================================================================================


phi=c(rep(0,11),0.8) 
acf=ARMAacf(ar=phi,ma=-0.5,50)
pacf=ARMAacf(ar=phi,ma=-0.5,50,pacf=T)
par(mfrow=c(1,2))

plot(acf,type="h",xlab="lag")
abline(h=0)

plot(pacf,type="h",xlab="lag")
abline(h=0)



#================================================================================
#
# PART  2:  Analysis of Monthly Federal Researve Board Production Index 
#           (1948-1978, n=372 monthes) 
# 	   
#================================================================================


prod=scan(file.choose())
par(mfrow=c(2,1))
acf(prod, 48)
pacf(prod, 48)


par(mfrow=c(2,1))
acf(diff(prod), 48)
pacf(diff(prod), 48)



par(mfrow=c(2,1))
acf(diff(diff(prod),12), 48)
pacf(diff(diff(prod),12), 48)


#================================================================================
#
# Fit the model SARIMA(1,1,1)X(2,1,1)_{12}
#
#==============================================================================


prodfit3=arima(prod, order=c(1,1,1), seasonal=list(order=c(2,1,1), period=12))
prodfit3 
tsdiag(prodfit3, gof.lag=48)





>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
