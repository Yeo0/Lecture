<<<<<<< HEAD
###1.2###

#(a)
par(mfrow=c(1,2))
sa = c(rep(0,100), 10*exp(-(1:100)/20)*cos(2*pi*1:100/4)) 
xa = ts(sa + rnorm(200, 0, 1))
plot(xa, main="1-2-(a)")
?plot
#(b)
sb = c(rep(0,100), 10*exp(-(1:100)/200)*cos(2*pi*1:100/4))
xb = ts(sb + rnorm(200, 0, 1))
plot(xb, main="1-2-(b)")

#(c)
x <- matrix(scan("http://www.stat.pitt.edu/stoffer/tsa2/data/eq5exp6.dat.txt"), ncol=2)
par(mfrow=c(2,1))
plot(x[,1],type="l", main="Earthquake", ylab="EQ5")

Ear=x[,1]

as = 10*exp(-Ear[1:100]/20)*cos(2*pi*Ear[1:100]/4)
ax = ts(as + rnorm(100, 0, 1))
plot(ax, main="1-2-(c)-(a)")

bs = 10*exp(-Ear[1:100]/200)*cos(2*pi*Ear[1:100]/4)
bx = ts(bs + rnorm(100, 0, 1))
plot(bx, main="1-2-(c)-(b)")

##결론: 






#2.2
mort = ts(read.table("C://Users//USER//Desktop//시계열 과제//cmort.txt"),start=1970, frequency=52)
temp = ts(read.table("C://Users//USER//Desktop//시계열 과제//temp.txt"),start=1970, frequency=52)
part = ts(read.table("C://Users//USER//Desktop//시계열 과제//part.txt"),start=1970, frequency=52)

par(mfrow=c(3,1), mar=c(3,4,3,2))        
plot(mort, main="Cardiovascular Mortality", xlab="", ylab="")
plot(temp, main="Temperature", xlab="", ylab="")
plot(part, main="Particulates", xlab="", ylab="")
abline(fit)
fitted.tbats()#(a)
part4=part[-c(1:3)] #pt-4
part4=c(part4,rep(mean(part4),3)) #마지막3개 평균대체
trend=time(mort)
temp1=temp-mean(temp)
temp2=(temp-mean(temp))^2
plot(mort,temp,part)
fit=lm(mort~trend+temp1+temp2+part+part4)
summary(fit)
##결론 : 


#(b)
pairs(cbind(mort, temp, part, part4))
cor(cbind(mort, part, part4))[1,]
cor(cbind(mort,part), cbind(mort,part4))
#cor(cbind(mort, part4))
#mt pt verse mt pt-4


#2.3
par(mfcol = c(3,2)) # set up graphics
for (i in 1:6){
   x = ts(cumsum(rnorm(100,0.01,1))) # the data
   reg = lm(x~0+time(x), na.action=NULL) # the regression #time (x)가 베타 티 인가??
   plot(x) # plot data
   lines(.01*time(x), col="red", lty="dashed") # plot mean
   abline(reg, col="blue") } # plot regression line

##결론 : 평균은 점차 증가하는 추세이고 이 추세는 몇번을 반복해도 같은데 reg은 샘플이 어떻게 나ㅌ나느냐에 따라 크게 변함
## 굉장히 민감함..ㅜㅜ 더 결론이 있나? ㅜㅜ

#3.6
par(mfrow=c(1,1))
ar2=arima.sim(list(order=c(2,0,0), ar=c(0,-0.9)),n=100)
?arima.sim
plot(ar2)
acf(ar2, main="ACF of AR(2)")
pacf(ar2)

aa=c(1,0,-0.9)
polyroot(aa)[1]



#3.9
par(mfrow=c(3,1))
arma11=arima.sim(list(order=c(1,0,1), ar=0.6, ma=0.9), n=100)
ar1=arima.sim(list(order=c(1,0,0), ar=0.6), n=100)
ma1=arima.sim(list(order=c(0,0,1), ma=0.9), n=100)
acf(arma11)
acf(ar1)
acf(ma1)
pacf(arma11)
pacf(ar1)
pacf(ma1)




#3.19 
new_ar1=arima.sim(list(order=c(1,0,0)), n=)
?arima.sim




#3.21
arma11=arima.sim(list(order=c(1,0,1), ar=0.9, ma=0.5), n=2000, sd=1)
yeah=as.data.frame(matrix(arma11, nrow=200))
head(yeah)
# mle_function=function(sigma,theta, pii){
#   (1/2)*l(2*pi*sigma^2*(1+theta^2))+(1/(2*sigma^2))*((sum(yeah[1:99,1]-pii*yeah[2:100,1])^2)/(2*sigma^2*(1+theta^2)))
# }


mle_function=function(sigma,theta, pii){
  (1/2)*log(2*pi*sigma^2*(1+theta^2))+((sum(yeah[1:99,1]-pii*yeah[2:100,1])^2)/(2*sigma^2*(1+theta^2)))
}

# install.packages("stats4")
library(stats4)
mle(mle_function, list(sigma = 1, theta = 1, pii = 1), method = "CG")







#(b)

arma11=arima.sim(list(order=c(1,0,1), ar=0.9, ma=0.5), n=2000, sd=1)

ar2=arima.sim(list(order=c(2,0,0), ar=c(0.4,0.5)),n=1000) # 어떻게 해야하지?

new_ar2=arima(ar2, order=c(2,0,0))
new_ar2
new_ar4=arima(ar2, order=c(4,0,0))
new_ar4


ex.arima = function(x){
  for(x in 1:10){
    print(arima(ar2, order=c(0,0,x)))
  }
}

ex.arima(1) 


str(ar2)
head(ar2)
#1)acf, pacf 모형
acf(ar2)
pacf(ar2)
ar2
#2)ar2 랑 ar4에 적합, 문제뭐거 


#3)ma p=1~10 적합



#(c)
suns=read.table("C://Users//USER//Desktop//시계열 과제//sunspot2.txt")
head(suns); str(suns)
xt=sqrt(suns[,2])
tsxt=ts(xt)


#i)
plot(tsxt, main="series plot")
acf(tsxt, main="sample ACF")
pacf(tsxt, main="sample PACF")

difxt=diff(tsxt, differences=1)
s_difxt = diff((difx분t), lag=12, difference=1)
par(mfrow=c(3,1))
acf(s_difxt,main="sample ACF, 계절차분+차분")
pacf(s_difxt,main="sample PACF, 계절차분+차분")
plot(s_difxt, main="series plot, 계절차분+차부")

#ii)
#ar1=arima(difxt, c(1,0,0)) #=arima(tsxt, c(1,1,0))인가요? 아닌데..해석이 뭐가다른거지ㅠ
ar1=arima(tsxt, c(1,0,0))
ar2=arima(tsxt, c(2,0,0))
ma1=arima(tsxt, c(0,0,1))
ma2=arima(tsxt, c(0,0,2))

summary(ar1)
pacf(difxt)
ar1
ar2
ma1
ma2
# 뭐가 적절할꺼 같은지 파악해보자
# AR(1), AR(2), MA(1) or MA(2). Use
# the data to estimate the parameters of the model that you choose.
# 자


# #iii)
# iv) Use the observation from 1700 to 1983 for tting the model. Plot all of the
# data, and your forecasts and prediction intervals for the last four years. (Dont
          
library(forecast)
ar2=arima(tsxt, order=c(2,0,0))                                                                
forecast(ar2, h = 4)
plot(forecast(ar2, h = 4))

# Using your tted model, calculate forecasts Xn
# n+h, for h = 1; 2; 3; 4. Calculate
# the 95% prediction intervals (assuming Gaussian noise).

#4
xt=read.table("C://Users//USER//Desktop//시계열 과제//안면도온실가스.txt", header=T)

t.tsxt = ts(tsxt, start = 1700, freq = 1)
train = t.tsxt[1:(length(tsxt)-4)]
test = t.tsxt[(length(tsxt)-3):length(tsxt)]

ts.plot(train)
acf(train)
pacf(train)

auto.arima(train)


fit1 = arima(train, order = c(2, 0, 1));fit1
fit2 = arima(train, order = c(2, 0, 2));fit2
fit3 = arima(train, order = c(2, 0, 0));fit3 #best
fit4 = arima(train, order = c(3, 0, 2));fit4

library(forecast)
par(mfrow=c(1,1))
plot(forecast(fit3, h = 4))
forcasting = (as.data.frame(forecast(fit3, h = 4))[, 1])^2
forcasting
#(d)
par(mfrow=c(1,1))
ann=read.csv("C://Users//USER//Desktop//시계열 과제//안면도온실가스.csv", header=T)
tsann=ts(ann, start=1999, freq=12)[,2]
str(tsann)
plot(tsann, main="안면도 온실가스 ~2013.1" ) #시간에 따라 증가하는 trend 존재, 시간의 흐름에 따라 분산 증가

par(mfrow=c(1,2))

acf(tsann) #분
pacf(tsann)

# plot을 한번 그려보고 / 차분할지말지 파악 (차분 후 계절성 화인하고 할지 말지 뭐 보고)
# 다 차분을 했으면( 추세도 없고 시간흐름에 따라 평균 분산 일정하면)  -> acf pacf
# acf pacf 로 ar ma 를 확인 (차수를 찾는건데 (앞에서 눈에띄는 선의 개수), auto.arima(원데이터) 가 이걸 찾아주는거야 이걸로 대충 어쩌겠다 정도만)
# auto.arima로 찾은거랑 내가 해본거랑 비교정도
# 여러 후보들에 aic bic mse 등등 비교 해서 최적모델 선택
# 이걸로 예측하든 뭘하다나ㅣ렁ㅓ ㅓㅏ어ㅏ런






difann=diff((tsann), difference=1) #한번차분
plot(difann, main="안면도 온실가스 ~2013.1 / diff=1, lag=12") # 대충 주기가 12정도로 보임

rm(list=ls()); gc(reset=T)

difann2=diff((difann), lag=12, difference=1) #계절차분+ 차분
plot(difann2, main="안면도 온실가스 ~2013.1 / 계절차분1 + 차분1" )



par(mfrow=c(1,2))
acf(difann2)
pacf(difann2)

library(forecast)
auto.arima(tsann)
arima(tsann, order=c(3,0,2),seasonal=list(order=c(2,1,0)))

# 
# 
# arima(tsann, order=c(5,1,1), seasonal=list(order=c(0,1,0))) # 원래데이터 , aic, bic, log likelihood기준으로 작을수록 
# arima(tsann, order=c(0,1,2), seasonal=list(order=c(1,1,2)))
# arima(tsann, order=c(0,1,1), seasonal=list(order=c(0,1,1)))
# arima(tsann, order=c(3,1,1), seasonal=list(order=c(0,1,1)))
# arima(tsann, order=c(4,1,3), seasonal=list(order=c(0,1,2)))

arima_diffann2=arima(tsann, order=c(4,1,3), seasonal=list(order=c(0,1,2))) #채택

pred1 <- predict(arima_diffann2, n.ahead=23)
pred1

plot(forecast(arima_diffann2))

pred2014=pred1$pred[-c(1:11)]
mean((ann2014[,2]-pred2014)^2) #mse



mean(pred1$pred[-c(1:11)]) # 내년 평균 예측

ann2014=read.csv("C://Users//USER//Desktop//시계열 과제//안면도 온실가스 2014년.csv", header = T)
mean(ann2014[,2]) #실제 2014년 평ㄱ
mean
=======
###1.2###

#(a)
par(mfrow=c(1,2))
sa = c(rep(0,100), 10*exp(-(1:100)/20)*cos(2*pi*1:100/4)) 
xa = ts(sa + rnorm(200, 0, 1))
plot(xa, main="1-2-(a)")
?plot
#(b)
sb = c(rep(0,100), 10*exp(-(1:100)/200)*cos(2*pi*1:100/4))
xb = ts(sb + rnorm(200, 0, 1))
plot(xb, main="1-2-(b)")

#(c)
x <- matrix(scan("http://www.stat.pitt.edu/stoffer/tsa2/data/eq5exp6.dat.txt"), ncol=2)
par(mfrow=c(2,1))
plot(x[,1],type="l", main="Earthquake", ylab="EQ5")

Ear=x[,1]

as = 10*exp(-Ear[1:100]/20)*cos(2*pi*Ear[1:100]/4)
ax = ts(as + rnorm(100, 0, 1))
plot(ax, main="1-2-(c)-(a)")

bs = 10*exp(-Ear[1:100]/200)*cos(2*pi*Ear[1:100]/4)
bx = ts(bs + rnorm(100, 0, 1))
plot(bx, main="1-2-(c)-(b)")

##결론: 






#2.2
mort = ts(read.table("C://Users//USER//Desktop//시계열 과제//cmort.txt"),start=1970, frequency=52)
temp = ts(read.table("C://Users//USER//Desktop//시계열 과제//temp.txt"),start=1970, frequency=52)
part = ts(read.table("C://Users//USER//Desktop//시계열 과제//part.txt"),start=1970, frequency=52)

par(mfrow=c(3,1), mar=c(3,4,3,2))        
plot(mort, main="Cardiovascular Mortality", xlab="", ylab="")
plot(temp, main="Temperature", xlab="", ylab="")
plot(part, main="Particulates", xlab="", ylab="")
abline(fit)
fitted.tbats()#(a)
part4=part[-c(1:3)] #pt-4
part4=c(part4,rep(mean(part4),3)) #마지막3개 평균대체
trend=time(mort)
temp1=temp-mean(temp)
temp2=(temp-mean(temp))^2
plot(mort,temp,part)
fit=lm(mort~trend+temp1+temp2+part+part4)
summary(fit)
##결론 : 


#(b)
pairs(cbind(mort, temp, part, part4))
cor(cbind(mort, part, part4))[1,]
cor(cbind(mort,part), cbind(mort,part4))
#cor(cbind(mort, part4))
#mt pt verse mt pt-4


#2.3
par(mfcol = c(3,2)) # set up graphics
for (i in 1:6){
   x = ts(cumsum(rnorm(100,0.01,1))) # the data
   reg = lm(x~0+time(x), na.action=NULL) # the regression #time (x)가 베타 티 인가??
   plot(x) # plot data
   lines(.01*time(x), col="red", lty="dashed") # plot mean
   abline(reg, col="blue") } # plot regression line

##결론 : 평균은 점차 증가하는 추세이고 이 추세는 몇번을 반복해도 같은데 reg은 샘플이 어떻게 나ㅌ나느냐에 따라 크게 변함
## 굉장히 민감함..ㅜㅜ 더 결론이 있나? ㅜㅜ

#3.6
par(mfrow=c(1,1))
ar2=arima.sim(list(order=c(2,0,0), ar=c(0,-0.9)),n=100)
?arima.sim
plot(ar2)
acf(ar2, main="ACF of AR(2)")
pacf(ar2)

aa=c(1,0,-0.9)
polyroot(aa)[1]



#3.9
par(mfrow=c(3,1))
arma11=arima.sim(list(order=c(1,0,1), ar=0.6, ma=0.9), n=100)
ar1=arima.sim(list(order=c(1,0,0), ar=0.6), n=100)
ma1=arima.sim(list(order=c(0,0,1), ma=0.9), n=100)
acf(arma11)
acf(ar1)
acf(ma1)
pacf(arma11)
pacf(ar1)
pacf(ma1)




#3.19 
new_ar1=arima.sim(list(order=c(1,0,0)), n=)
?arima.sim




#3.21
arma11=arima.sim(list(order=c(1,0,1), ar=0.9, ma=0.5), n=2000, sd=1)
yeah=as.data.frame(matrix(arma11, nrow=200))
head(yeah)
# mle_function=function(sigma,theta, pii){
#   (1/2)*l(2*pi*sigma^2*(1+theta^2))+(1/(2*sigma^2))*((sum(yeah[1:99,1]-pii*yeah[2:100,1])^2)/(2*sigma^2*(1+theta^2)))
# }


mle_function=function(sigma,theta, pii){
  (1/2)*log(2*pi*sigma^2*(1+theta^2))+((sum(yeah[1:99,1]-pii*yeah[2:100,1])^2)/(2*sigma^2*(1+theta^2)))
}

# install.packages("stats4")
library(stats4)
mle(mle_function, list(sigma = 1, theta = 1, pii = 1), method = "CG")







#(b)

arma11=arima.sim(list(order=c(1,0,1), ar=0.9, ma=0.5), n=2000, sd=1)

ar2=arima.sim(list(order=c(2,0,0), ar=c(0.4,0.5)),n=1000) # 어떻게 해야하지?

new_ar2=arima(ar2, order=c(2,0,0))
new_ar2
new_ar4=arima(ar2, order=c(4,0,0))
new_ar4


ex.arima = function(x){
  for(x in 1:10){
    print(arima(ar2, order=c(0,0,x)))
  }
}

ex.arima(1) 


str(ar2)
head(ar2)
#1)acf, pacf 모형
acf(ar2)
pacf(ar2)
ar2
#2)ar2 랑 ar4에 적합, 문제뭐거 


#3)ma p=1~10 적합



#(c)
suns=read.table("C://Users//USER//Desktop//시계열 과제//sunspot2.txt")
head(suns); str(suns)
xt=sqrt(suns[,2])
tsxt=ts(xt)


#i)
plot(tsxt, main="series plot")
acf(tsxt, main="sample ACF")
pacf(tsxt, main="sample PACF")

difxt=diff(tsxt, differences=1)
s_difxt = diff((difx분t), lag=12, difference=1)
par(mfrow=c(3,1))
acf(s_difxt,main="sample ACF, 계절차분+차분")
pacf(s_difxt,main="sample PACF, 계절차분+차분")
plot(s_difxt, main="series plot, 계절차분+차부")

#ii)
#ar1=arima(difxt, c(1,0,0)) #=arima(tsxt, c(1,1,0))인가요? 아닌데..해석이 뭐가다른거지ㅠ
ar1=arima(tsxt, c(1,0,0))
ar2=arima(tsxt, c(2,0,0))
ma1=arima(tsxt, c(0,0,1))
ma2=arima(tsxt, c(0,0,2))

summary(ar1)
pacf(difxt)
ar1
ar2
ma1
ma2
# 뭐가 적절할꺼 같은지 파악해보자
# AR(1), AR(2), MA(1) or MA(2). Use
# the data to estimate the parameters of the model that you choose.
# 자


# #iii)
# iv) Use the observation from 1700 to 1983 for tting the model. Plot all of the
# data, and your forecasts and prediction intervals for the last four years. (Dont
          
library(forecast)
ar2=arima(tsxt, order=c(2,0,0))                                                                
forecast(ar2, h = 4)
plot(forecast(ar2, h = 4))

# Using your tted model, calculate forecasts Xn
# n+h, for h = 1; 2; 3; 4. Calculate
# the 95% prediction intervals (assuming Gaussian noise).

#4
xt=read.table("C://Users//USER//Desktop//시계열 과제//안면도온실가스.txt", header=T)

t.tsxt = ts(tsxt, start = 1700, freq = 1)
train = t.tsxt[1:(length(tsxt)-4)]
test = t.tsxt[(length(tsxt)-3):length(tsxt)]

ts.plot(train)
acf(train)
pacf(train)

auto.arima(train)


fit1 = arima(train, order = c(2, 0, 1));fit1
fit2 = arima(train, order = c(2, 0, 2));fit2
fit3 = arima(train, order = c(2, 0, 0));fit3 #best
fit4 = arima(train, order = c(3, 0, 2));fit4

library(forecast)
par(mfrow=c(1,1))
plot(forecast(fit3, h = 4))
forcasting = (as.data.frame(forecast(fit3, h = 4))[, 1])^2
forcasting
#(d)
par(mfrow=c(1,1))
ann=read.csv("C://Users//USER//Desktop//시계열 과제//안면도온실가스.csv", header=T)
tsann=ts(ann, start=1999, freq=12)[,2]
str(tsann)
plot(tsann, main="안면도 온실가스 ~2013.1" ) #시간에 따라 증가하는 trend 존재, 시간의 흐름에 따라 분산 증가

par(mfrow=c(1,2))

acf(tsann) #분
pacf(tsann)

# plot을 한번 그려보고 / 차분할지말지 파악 (차분 후 계절성 화인하고 할지 말지 뭐 보고)
# 다 차분을 했으면( 추세도 없고 시간흐름에 따라 평균 분산 일정하면)  -> acf pacf
# acf pacf 로 ar ma 를 확인 (차수를 찾는건데 (앞에서 눈에띄는 선의 개수), auto.arima(원데이터) 가 이걸 찾아주는거야 이걸로 대충 어쩌겠다 정도만)
# auto.arima로 찾은거랑 내가 해본거랑 비교정도
# 여러 후보들에 aic bic mse 등등 비교 해서 최적모델 선택
# 이걸로 예측하든 뭘하다나ㅣ렁ㅓ ㅓㅏ어ㅏ런






difann=diff((tsann), difference=1) #한번차분
plot(difann, main="안면도 온실가스 ~2013.1 / diff=1, lag=12") # 대충 주기가 12정도로 보임

rm(list=ls()); gc(reset=T)

difann2=diff((difann), lag=12, difference=1) #계절차분+ 차분
plot(difann2, main="안면도 온실가스 ~2013.1 / 계절차분1 + 차분1" )



par(mfrow=c(1,2))
acf(difann2)
pacf(difann2)

library(forecast)
auto.arima(tsann)
arima(tsann, order=c(3,0,2),seasonal=list(order=c(2,1,0)))

# 
# 
# arima(tsann, order=c(5,1,1), seasonal=list(order=c(0,1,0))) # 원래데이터 , aic, bic, log likelihood기준으로 작을수록 
# arima(tsann, order=c(0,1,2), seasonal=list(order=c(1,1,2)))
# arima(tsann, order=c(0,1,1), seasonal=list(order=c(0,1,1)))
# arima(tsann, order=c(3,1,1), seasonal=list(order=c(0,1,1)))
# arima(tsann, order=c(4,1,3), seasonal=list(order=c(0,1,2)))

arima_diffann2=arima(tsann, order=c(4,1,3), seasonal=list(order=c(0,1,2))) #채택

pred1 <- predict(arima_diffann2, n.ahead=23)
pred1

plot(forecast(arima_diffann2))

pred2014=pred1$pred[-c(1:11)]
mean((ann2014[,2]-pred2014)^2) #mse



mean(pred1$pred[-c(1:11)]) # 내년 평균 예측

ann2014=read.csv("C://Users//USER//Desktop//시계열 과제//안면도 온실가스 2014년.csv", header = T)
mean(ann2014[,2]) #실제 2014년 평ㄱ
mean
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
