<<<<<<< HEAD
install.packages("tseries")
library(tseries)
tui <- read.csv("C://Users//USER//Downloads//tuicsv.csv", header=T)
#file.choose 로 찾아갈수있음 dec sep
?file.choose

head(tui)

plot(tui[,5], type="l",
     lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60) )

dim(tui)
#시점 거꾸로 하는거 방법1
x<-seq(589:1)
head(x)
plot(x,tui[,5], type="l",
     lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60) )

#방법2
plot(tui[589:1,5], type="l",
     lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60) )


#log변환 후 differencing
plot(diff(log(tui[,5])),type="l")  #로그 취해서 diff하면 수익률의 개념 -    
plot(diff(log(tui[589:1,5])),type="l")  

diff(c(1,3,6,10,15)) #xt-xt-1이니까 계차수열느낌..
diff(c(1,3,6,10,15), lag=2) #lag만큼 건너뛰어서 차분 / lag=주기
diff(c(1,3,6,10,15), differences=2 ) #두번연속 diff 적용

hist(diff(tui[,4]),prob=T,ylim=c(0,0.6),xlim=c(-5,5),col="red") # prob = T 는 상대도수
lines(density(diff(tui[,4])),lwd=2) #density추정량

mu<-mean(diff(tui[,4]))
sigma<-sd(diff(tui[,4]))
x<-seq(-4,4,length=100) #-4~4까지 100
y<-dnorm(x,mu,sigma) # 정규분포의 density 값(pdf) #dbirnom 등등 분포들의 값들 , pnorm은 cdf / qnorm 
lines(x,y,lwd=2,col="blue")
qqnorm(diff(tui[,4])) # 양수로 아주큰값, 음수로 아주큰값들이 정규분포보다 많이 나타나고 있음
abline(0,1) # abline (절편, 기울기), 정규분포에 가깝다면 이선위로 쭈욱 나타나겠지

# 
# ctrl+shift+c
# 참고
# The KolmogorovSmirnoff test - 자료가 정규모집단인지 아닌지 test 
x<-diff(log(tui[,5]))
ks.test(x,"pnorm",mean(x),sd(x)) # ks.test는 연속형 자료들로 (동점인 자료가 있으면 안됨, 근데 실제에선 불가능하므로 걍 warning message는 무시)
#p value 귀무가설 기각 - 데이터는 정규분포를 따른다가 귀무가설 -> 데이터가 정규분포를 따른다고 보기 어렵다고 할 수 ㅣㅇㅆ음)

shapiro.test(x) #정규성에 대한 test



#chap2

plot(tui[,5],type="l") ##filter의 window사이즈가 크면 큰추세, 작은변동 무시/ 작으면 너무 짜잘한거까지 
tui.1 <- filter(tui[,5],filter=rep(1/5,5)) #window 5개 매우작음
tui.2 <- filter(tui[,5],filter=rep(1/25,25)) #적당..
tui.3 <- filter(tui[,5],filter=rep(1/81,81)) #window 81 큼 중요한거 다 무시됨
lines(tui.1,col="red")
lines(tui.2,col="purple")
lines(tui.3,col="blue")


beer<-read.csv("C://Users//USER//Downloads//beercsv.csv", header=T)
beer<-ts(beer[,1],start=1956,freq=12) #time series 로 변환 / 변환시키고싶은 자료, starting 되는 시점, 빈도
head(beer)
plot(beer) #trend도 있고 주기도 있

m<-HoltWinters(beer)     
fitted(m)
lines(fitted(m)[,1],col=2)

plot(stl(log(beer),s.window="periodic"))#trend seasonal 나머지 잔차들 / 실제로 분석할땐 마지막에 있는 나머지 잔차들로 시계열 분석을 하는것임
?stl #stl 은 moving average 로 trend 잡음

#다항 회귀모형으로 trend 잡는법(수업시간에 한거)
lbeer<-log(beer)
t<-seq(1956,1995.2,length=length(beer)) #.2...? 머라머라했는데
t2<-t^2
plot(lbeer)
lm(lbeer~t+t2)
lines(lm(lbeer~t+t2)$fit,col=2,lwd=2)

sin.t<-sin(2*pi*t)
cos.t<-cos(2*pi*t)
plot(lbeer)
lines(lm(lbeer~t+t2+sin.t+cos.t)$fit,col=4)



#3.1 smoothing 
#1) 트렌드찾기
#2) 예측


beer<-read.csv("C://Users//USER//Downloads//beercsv.csv", header=T)
str(beer)
beer<-ts(beer[,1],start=1956,freq=12) #벡터데이터를 ts데이터로
HoltWinters(beer)
?HoltWinters #Computes Holt-Winters Filtering of a given time series.
plot(beer)
lines(HoltWinters(beer)$fitted, col="red") # 어 에런ㄷ

m<-HoltWinters(beer)
lines(fitted(m)[,1], col=2)
fitted(m)
#이렇게하면 에런안나!


beer.hw<-HoltWinters(beer)
predict(beer.hw,n.ahead=12) #모형기반예측이 아니라 그냥 weight줘서 예측한거라 추론하기 어려움
plot(m$fitted) #뭘 다볼수 있댔는데..12분
plot(beer,xlim=c(1956,1999))
lines(predict(beer.hw,n.ahead=48),col=2)
plot(beer,xlim=c(1956,2020))
lines(predict(beer.hw,n.ahead=240), col=2) #관측범위 바깥 값은 예측하기 어려움..
#time series 의 확률적인 성질이 위치에 상관없이 일정하다는 뜻임 : stationary 만족한다는게



#4.1 ARIMA
sim.ar<-arima.sim(list(ar=c(0.4,0.4)),n=1000) #ARIMA따르는 데이터 생성가능 #AR(2)모형,p1=0.4, p2=0.4, 
plot(sim.ar)
sim.ma<-arima.sim(list(ma=c(0.6,-0.4)),n=1000)
plot(sim.ma)
#plot상으로 구별힘듬, acf pacf써서 구별해야함

par(mfrow=c(2,2))
acf(sim.ar,main="ACF of AR(2) process") #점점 지수적 감소
acf(sim.ma,main="ACF of MA(2) process") #0.6, -0.4 두개빼고 나머지는 0근처 , sample이라 약간의 오차있음
pacf(sim.ar,main="PACF of AR(2) process")
pacf(sim.ma,main="PACF of MA(2) process")

?arima.sim #the function that generate arima data #model 을 리스트로 주면 ARMA(2,2)이런식으로 
#arima.sim(n = 63, list(ar = c(0.8897, -0.4858), ma = c(-0.2279, 0.2488)),sd = sqrt(0.1796)) sd의 standard deviation 
?acf 

#4.2?3?
str(LakeHuron)
fit<-arima(LakeHuron,order=c(1,0,1)) #arma(1,1)
fit #intercept : 평균을 0으로 만드는 값
fit2<-arima(LakeHuron, order=c(2,0,0)) #ar(2) 
fit2 #1근처의 값을 가짐 -> 안좋음 (stationary, casuality안될수)

#4.4
fit<-arima(LakeHuron,order=c(1,0,1))
tsdiag(fit) #Ljung box : 각 lag별 p값 ,  H0: 각 lag별 독립이다. / 이 경우에는 H0기각 불가 = residual 들이 서로 독립이다 -> ARMA(1,1)이 이 자료를 잘 설명하고있다는 것을 의미
Box.test(fit$residuals,lag=1) #이론은 다루지 않겠음 #46분정도?


#4.5 #46분 이후로..
fit<-arima(LakeHuron,order=c(1,0,1))
LH.pred<-predict(fit,n.ahead=8)
LH.pred #

par(mfrow=c(1,1))
plot(LakeHuron,xlim=c(1875,1980),ylim=c(575,584))
LH.pred<-predict(fit,n.ahead=8)
lines(LH.pred$pred,col="red")
lines(LH.pred$pred+2*LH.pred$se,col="red",lty=3)
lines(LH.pred$pred-2*LH.pred$se,col="red",lty=3)

tt<-seq(1973,2000) #길게 예측하면 평균이랑 가깝게 감
LH.pred<-predict(fit,n.ahead=28)

#...카메라 찍은거 보고 마무리하기


#+알파
?arima #arima의 옵션들
arima(x, order = c(0L, 0L, 0L), #c(ar,q,ma)
      seasonal = list(order = c(0L, 0L, 0L), period = NA),
      xreg = NULL, include.mean = TRUE,
      transform.pars = TRUE,
      fixed = NULL, init = NULL,
      method = c("CSS-ML", "ML", "CSS"), n.cond,
      SSinit = c("Gardner1980", "Rossignol2011"),
      optim.method = "BFGS",
      optim.control = list(), kappa = 1e6)

#likelyhood기반
#loglikelyhood -> aic bic 계산가능

#과제 - simulation , data analysis 


=======
install.packages("tseries")
library(tseries)
tui <- read.csv("C://Users//USER//Downloads//tuicsv.csv", header=T)
#file.choose 로 찾아갈수있음 dec sep
?file.choose

head(tui)

plot(tui[,5], type="l",
     lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60) )

dim(tui)
#시점 거꾸로 하는거 방법1
x<-seq(589:1)
head(x)
plot(x,tui[,5], type="l",
     lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60) )

#방법2
plot(tui[589:1,5], type="l",
     lwd=2, col="red", xlab="time", ylab="closing values",main="TUI AG", ylim=c(0,60) )


#log변환 후 differencing
plot(diff(log(tui[,5])),type="l")  #로그 취해서 diff하면 수익률의 개념 -    
plot(diff(log(tui[589:1,5])),type="l")  

diff(c(1,3,6,10,15)) #xt-xt-1이니까 계차수열느낌..
diff(c(1,3,6,10,15), lag=2) #lag만큼 건너뛰어서 차분 / lag=주기
diff(c(1,3,6,10,15), differences=2 ) #두번연속 diff 적용

hist(diff(tui[,4]),prob=T,ylim=c(0,0.6),xlim=c(-5,5),col="red") # prob = T 는 상대도수
lines(density(diff(tui[,4])),lwd=2) #density추정량

mu<-mean(diff(tui[,4]))
sigma<-sd(diff(tui[,4]))
x<-seq(-4,4,length=100) #-4~4까지 100
y<-dnorm(x,mu,sigma) # 정규분포의 density 값(pdf) #dbirnom 등등 분포들의 값들 , pnorm은 cdf / qnorm 
lines(x,y,lwd=2,col="blue")
qqnorm(diff(tui[,4])) # 양수로 아주큰값, 음수로 아주큰값들이 정규분포보다 많이 나타나고 있음
abline(0,1) # abline (절편, 기울기), 정규분포에 가깝다면 이선위로 쭈욱 나타나겠지

# 
# ctrl+shift+c
# 참고
# The KolmogorovSmirnoff test - 자료가 정규모집단인지 아닌지 test 
x<-diff(log(tui[,5]))
ks.test(x,"pnorm",mean(x),sd(x)) # ks.test는 연속형 자료들로 (동점인 자료가 있으면 안됨, 근데 실제에선 불가능하므로 걍 warning message는 무시)
#p value 귀무가설 기각 - 데이터는 정규분포를 따른다가 귀무가설 -> 데이터가 정규분포를 따른다고 보기 어렵다고 할 수 ㅣㅇㅆ음)

shapiro.test(x) #정규성에 대한 test



#chap2

plot(tui[,5],type="l") ##filter의 window사이즈가 크면 큰추세, 작은변동 무시/ 작으면 너무 짜잘한거까지 
tui.1 <- filter(tui[,5],filter=rep(1/5,5)) #window 5개 매우작음
tui.2 <- filter(tui[,5],filter=rep(1/25,25)) #적당..
tui.3 <- filter(tui[,5],filter=rep(1/81,81)) #window 81 큼 중요한거 다 무시됨
lines(tui.1,col="red")
lines(tui.2,col="purple")
lines(tui.3,col="blue")


beer<-read.csv("C://Users//USER//Downloads//beercsv.csv", header=T)
beer<-ts(beer[,1],start=1956,freq=12) #time series 로 변환 / 변환시키고싶은 자료, starting 되는 시점, 빈도
head(beer)
plot(beer) #trend도 있고 주기도 있

m<-HoltWinters(beer)     
fitted(m)
lines(fitted(m)[,1],col=2)

plot(stl(log(beer),s.window="periodic"))#trend seasonal 나머지 잔차들 / 실제로 분석할땐 마지막에 있는 나머지 잔차들로 시계열 분석을 하는것임
?stl #stl 은 moving average 로 trend 잡음

#다항 회귀모형으로 trend 잡는법(수업시간에 한거)
lbeer<-log(beer)
t<-seq(1956,1995.2,length=length(beer)) #.2...? 머라머라했는데
t2<-t^2
plot(lbeer)
lm(lbeer~t+t2)
lines(lm(lbeer~t+t2)$fit,col=2,lwd=2)

sin.t<-sin(2*pi*t)
cos.t<-cos(2*pi*t)
plot(lbeer)
lines(lm(lbeer~t+t2+sin.t+cos.t)$fit,col=4)



#3.1 smoothing 
#1) 트렌드찾기
#2) 예측


beer<-read.csv("C://Users//USER//Downloads//beercsv.csv", header=T)
str(beer)
beer<-ts(beer[,1],start=1956,freq=12) #벡터데이터를 ts데이터로
HoltWinters(beer)
?HoltWinters #Computes Holt-Winters Filtering of a given time series.
plot(beer)
lines(HoltWinters(beer)$fitted, col="red") # 어 에런ㄷ

m<-HoltWinters(beer)
lines(fitted(m)[,1], col=2)
fitted(m)
#이렇게하면 에런안나!


beer.hw<-HoltWinters(beer)
predict(beer.hw,n.ahead=12) #모형기반예측이 아니라 그냥 weight줘서 예측한거라 추론하기 어려움
plot(m$fitted) #뭘 다볼수 있댔는데..12분
plot(beer,xlim=c(1956,1999))
lines(predict(beer.hw,n.ahead=48),col=2)
plot(beer,xlim=c(1956,2020))
lines(predict(beer.hw,n.ahead=240), col=2) #관측범위 바깥 값은 예측하기 어려움..
#time series 의 확률적인 성질이 위치에 상관없이 일정하다는 뜻임 : stationary 만족한다는게



#4.1 ARIMA
sim.ar<-arima.sim(list(ar=c(0.4,0.4)),n=1000) #ARIMA따르는 데이터 생성가능 #AR(2)모형,p1=0.4, p2=0.4, 
plot(sim.ar)
sim.ma<-arima.sim(list(ma=c(0.6,-0.4)),n=1000)
plot(sim.ma)
#plot상으로 구별힘듬, acf pacf써서 구별해야함

par(mfrow=c(2,2))
acf(sim.ar,main="ACF of AR(2) process") #점점 지수적 감소
acf(sim.ma,main="ACF of MA(2) process") #0.6, -0.4 두개빼고 나머지는 0근처 , sample이라 약간의 오차있음
pacf(sim.ar,main="PACF of AR(2) process")
pacf(sim.ma,main="PACF of MA(2) process")

?arima.sim #the function that generate arima data #model 을 리스트로 주면 ARMA(2,2)이런식으로 
#arima.sim(n = 63, list(ar = c(0.8897, -0.4858), ma = c(-0.2279, 0.2488)),sd = sqrt(0.1796)) sd의 standard deviation 
?acf 

#4.2?3?
str(LakeHuron)
fit<-arima(LakeHuron,order=c(1,0,1)) #arma(1,1)
fit #intercept : 평균을 0으로 만드는 값
fit2<-arima(LakeHuron, order=c(2,0,0)) #ar(2) 
fit2 #1근처의 값을 가짐 -> 안좋음 (stationary, casuality안될수)

#4.4
fit<-arima(LakeHuron,order=c(1,0,1))
tsdiag(fit) #Ljung box : 각 lag별 p값 ,  H0: 각 lag별 독립이다. / 이 경우에는 H0기각 불가 = residual 들이 서로 독립이다 -> ARMA(1,1)이 이 자료를 잘 설명하고있다는 것을 의미
Box.test(fit$residuals,lag=1) #이론은 다루지 않겠음 #46분정도?


#4.5 #46분 이후로..
fit<-arima(LakeHuron,order=c(1,0,1))
LH.pred<-predict(fit,n.ahead=8)
LH.pred #

par(mfrow=c(1,1))
plot(LakeHuron,xlim=c(1875,1980),ylim=c(575,584))
LH.pred<-predict(fit,n.ahead=8)
lines(LH.pred$pred,col="red")
lines(LH.pred$pred+2*LH.pred$se,col="red",lty=3)
lines(LH.pred$pred-2*LH.pred$se,col="red",lty=3)

tt<-seq(1973,2000) #길게 예측하면 평균이랑 가깝게 감
LH.pred<-predict(fit,n.ahead=28)

#...카메라 찍은거 보고 마무리하기


#+알파
?arima #arima의 옵션들
arima(x, order = c(0L, 0L, 0L), #c(ar,q,ma)
      seasonal = list(order = c(0L, 0L, 0L), period = NA),
      xreg = NULL, include.mean = TRUE,
      transform.pars = TRUE,
      fixed = NULL, init = NULL,
      method = c("CSS-ML", "ML", "CSS"), n.cond,
      SSinit = c("Gardner1980", "Rossignol2011"),
      optim.method = "BFGS",
      optim.control = list(), kappa = 1e6)

#likelyhood기반
#loglikelyhood -> aic bic 계산가능

#과제 - simulation , data analysis 


>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
