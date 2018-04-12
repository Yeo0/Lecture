<<<<<<< HEAD
set.seed(1234567) #음...ㅋ...
x=seq(1,10)#x값 임의로 1부터 10까지
y=2.5+0.5*x+rnorm(10,0,1) #개수,평균,표편

x
y

lm(종속~독립)#분산분석,회귀분석
lm(y~x)
#intercept 밑 b0, x밑이 b1 / 개수를 몇개 안해서 부정확

y=2.5+0.5*x+rnorm(10000,0,1)
x #데이터개수 많이하면 거의 똑같이 나옴

a1=lm(y~x)
a1

summary(a1) #residual 잔차 estimator 추정량(ex X바(확률변수)) (b0,b1), estimate 추정량을 표본에 의해 계산된 값(ex x바)

pr(>~~) 유의확률 (2곱하기 10의 -16승) 

f-statistic 회귀모형의 적합성, 아노바 (회귀분석의 유의성 검정) -이런거 시험은 x
ㄴ 귀무가설 회귀모형적합안하다 대립가설 적합하다 > 유의확률 0.000~이니 적합함 >회귀분석 할 수 있음

anova(a1) #분산분석표 



set.seed(1234567)
x=seq(1,10)
y=2.5+0.5*x+rnorm(10,0,1)
y[10]=-10 #강제로 특이값 넣으려고 
par(mfrow=c(1,2))#이런거 알고 있어야!
plot(y~x, ylim=c(-0,10))
library(MASS) #rlm, lqs 함수쓰려면 해야해
m0=lm(y~x)
m1=rlm(y~x) #m1,m2 로버스트 회귀분석 방법
m2=lqs(y~x) #메디안쓰는거
plot(y~x,ylim=c(-10,10))
abline(m0$coef)
abline(m1$coef, lty="dotted", col="blue")
abline(m2$coef, lty="dotted", col="red")






rho.0=function(z){z^2}
rho.1=function(z){c<-1.345; ifelse(abs(z)<c, z^2, c*(2*abs(z)-c))} #ifelse(조건, 조건에 맞을 때의 식, 그외)
#abs(Z)<c <=> ㅣzㅣ<c

z=seq(-6,6,0.1)
y.0=rho.0(z)
y.1=rho.1(z)
par(mfrow=c(1,2))
plot(y.0~z, type="l", ylim=c(0,30), ylab="rho.o(z)")
plot(y.1~z, type="l", ylim=c(0,30), ylab="rho.1(z)")
par(new=T)
plot(y.0~z, type="l", lty="dotted", ylim=c(0,30), ylab="")

m1#8번 반복, 1.22 가 시그마 추정치,




##위엣걸 숫자크게 해보자 (완전히 극단적인거)
set.seed(1234567)
x=seq(1,10)
y=2.5+0.5*x+rnorm(10,0,1)
x[10]=100 
y[10]=-100 #강제로 특이값 넣으려고 
par(mfrow=c(1,2))#이런거 알고 있어야!
plot(y~x, ylim=c(-100,10))
library(MASS) #rlm, lqs 함수쓰려면 해야해
m0=lm(y~x)
m1=rlm(y~x) #m1,m2 로버스트 회귀분석 방법
m2=lqs(y~x) #메디안쓰는거
plot(y~x,ylim=c(-100,10))

abline(m1$coef, lty="dotted", col="blue")
abline(m2$coef, lty="dotted", col="red")

##m1 m2 차이 보여주려고 >>> 그래서 


plot(y~x,ylim=c(0,10))
abline(m1$coef, lty="dotted", col="blue")
abline(m2$coef, lty="dotted", col="red")




par(mfrow=c(1,2))
m2a=lqs(y~x, method="lts");m2a #a는진짜메디안
m2b=lqs(y~x, method="lts", quantile=8);m2b #10개중에 8개만 골라서 (잘랐을때)
plot(y~x, xlim=c(0,10), ylim=c(0,10))
abline(m2a$coef, lty="dotted", col="blue")
plot(y~x, xlim=c(0,10), ylim=c(0,10))
abline(m2b$coef, col="red")

sum(m2a$resid)
sum(m2b$resid)
sum(m2a$resid^2)
sum(m2b$resid^2)


data(stackloss)
stackloss

attach(stackloss)
str(stackloss)
m1=lm(stack.loss ~Air.Flow + Water.Temp + Acid.Conc.);m1
m2=rlm(stack.loss ~Air.Flow + Water.Temp + Acid.Conc.);m2
m3=lqs(stack.loss ~Air.Flow + Water.Temp + Acid.Conc., method="lms");m3
m4=lqs(stack.loss ~Air.Flow + Water.Temp + Acid.Conc., method="lts", quantile=16);m4

x11();boxplot(m1$resid, m2$resid, m3$resid, m4$resid) #특이값 생기면 잔차가 커짐 박스플롯에선 밖에 찍힘
#3번째거는 젤위에 진한게 겹친거라 총 특이값이 5개임, 4번째꺼도 4개

stackloss[abs(m4$resid)>=4,] #

str(m4)

st=(m4$resid-mean(m4$resid))/sd(m4$resid) # 표준화잔차

stackloss[abs(m4$resid)>=4,]
abs(st)>=4
abs(st)>=3
abs(st)>=2 # 3넘어가는게없음. 2부터 true조금씩 나옴

st[abs(st)>=2]

m5=lm(stack.loss~Air.Flow+Water.Temp+Acid.Conc., data=stackloss[abs(m4$resid)<4,])
m5
## m5가 이상값 제외하고 일반선형회귀분석

summary(m5)

#signif 에 있는 *찍는거 알아둬야해! 유의확률 표시방법임! 0,5 가 *, 0.01 **, 0.001 ***
이런식으로 *표시하는거
*이 찍히면 기각임. 즉 *이 찍혀야 유의한것!!! 맨마지막 acid.conc.는 *이 안찍혔기 때문에 유의하지 않음

anova(m5)



st
















































=======
set.seed(1234567) #음...ㅋ...
x=seq(1,10)#x값 임의로 1부터 10까지
y=2.5+0.5*x+rnorm(10,0,1) #개수,평균,표편

x
y

lm(종속~독립)#분산분석,회귀분석
lm(y~x)
#intercept 밑 b0, x밑이 b1 / 개수를 몇개 안해서 부정확

y=2.5+0.5*x+rnorm(10000,0,1)
x #데이터개수 많이하면 거의 똑같이 나옴

a1=lm(y~x)
a1

summary(a1) #residual 잔차 estimator 추정량(ex X바(확률변수)) (b0,b1), estimate 추정량을 표본에 의해 계산된 값(ex x바)

pr(>~~) 유의확률 (2곱하기 10의 -16승) 

f-statistic 회귀모형의 적합성, 아노바 (회귀분석의 유의성 검정) -이런거 시험은 x
ㄴ 귀무가설 회귀모형적합안하다 대립가설 적합하다 > 유의확률 0.000~이니 적합함 >회귀분석 할 수 있음

anova(a1) #분산분석표 



set.seed(1234567)
x=seq(1,10)
y=2.5+0.5*x+rnorm(10,0,1)
y[10]=-10 #강제로 특이값 넣으려고 
par(mfrow=c(1,2))#이런거 알고 있어야!
plot(y~x, ylim=c(-0,10))
library(MASS) #rlm, lqs 함수쓰려면 해야해
m0=lm(y~x)
m1=rlm(y~x) #m1,m2 로버스트 회귀분석 방법
m2=lqs(y~x) #메디안쓰는거
plot(y~x,ylim=c(-10,10))
abline(m0$coef)
abline(m1$coef, lty="dotted", col="blue")
abline(m2$coef, lty="dotted", col="red")






rho.0=function(z){z^2}
rho.1=function(z){c<-1.345; ifelse(abs(z)<c, z^2, c*(2*abs(z)-c))} #ifelse(조건, 조건에 맞을 때의 식, 그외)
#abs(Z)<c <=> ㅣzㅣ<c

z=seq(-6,6,0.1)
y.0=rho.0(z)
y.1=rho.1(z)
par(mfrow=c(1,2))
plot(y.0~z, type="l", ylim=c(0,30), ylab="rho.o(z)")
plot(y.1~z, type="l", ylim=c(0,30), ylab="rho.1(z)")
par(new=T)
plot(y.0~z, type="l", lty="dotted", ylim=c(0,30), ylab="")

m1#8번 반복, 1.22 가 시그마 추정치,




##위엣걸 숫자크게 해보자 (완전히 극단적인거)
set.seed(1234567)
x=seq(1,10)
y=2.5+0.5*x+rnorm(10,0,1)
x[10]=100 
y[10]=-100 #강제로 특이값 넣으려고 
par(mfrow=c(1,2))#이런거 알고 있어야!
plot(y~x, ylim=c(-100,10))
library(MASS) #rlm, lqs 함수쓰려면 해야해
m0=lm(y~x)
m1=rlm(y~x) #m1,m2 로버스트 회귀분석 방법
m2=lqs(y~x) #메디안쓰는거
plot(y~x,ylim=c(-100,10))

abline(m1$coef, lty="dotted", col="blue")
abline(m2$coef, lty="dotted", col="red")

##m1 m2 차이 보여주려고 >>> 그래서 


plot(y~x,ylim=c(0,10))
abline(m1$coef, lty="dotted", col="blue")
abline(m2$coef, lty="dotted", col="red")




par(mfrow=c(1,2))
m2a=lqs(y~x, method="lts");m2a #a는진짜메디안
m2b=lqs(y~x, method="lts", quantile=8);m2b #10개중에 8개만 골라서 (잘랐을때)
plot(y~x, xlim=c(0,10), ylim=c(0,10))
abline(m2a$coef, lty="dotted", col="blue")
plot(y~x, xlim=c(0,10), ylim=c(0,10))
abline(m2b$coef, col="red")

sum(m2a$resid)
sum(m2b$resid)
sum(m2a$resid^2)
sum(m2b$resid^2)


data(stackloss)
stackloss

attach(stackloss)
str(stackloss)
m1=lm(stack.loss ~Air.Flow + Water.Temp + Acid.Conc.);m1
m2=rlm(stack.loss ~Air.Flow + Water.Temp + Acid.Conc.);m2
m3=lqs(stack.loss ~Air.Flow + Water.Temp + Acid.Conc., method="lms");m3
m4=lqs(stack.loss ~Air.Flow + Water.Temp + Acid.Conc., method="lts", quantile=16);m4

x11();boxplot(m1$resid, m2$resid, m3$resid, m4$resid) #특이값 생기면 잔차가 커짐 박스플롯에선 밖에 찍힘
#3번째거는 젤위에 진한게 겹친거라 총 특이값이 5개임, 4번째꺼도 4개

stackloss[abs(m4$resid)>=4,] #

str(m4)

st=(m4$resid-mean(m4$resid))/sd(m4$resid) # 표준화잔차

stackloss[abs(m4$resid)>=4,]
abs(st)>=4
abs(st)>=3
abs(st)>=2 # 3넘어가는게없음. 2부터 true조금씩 나옴

st[abs(st)>=2]

m5=lm(stack.loss~Air.Flow+Water.Temp+Acid.Conc., data=stackloss[abs(m4$resid)<4,])
m5
## m5가 이상값 제외하고 일반선형회귀분석

summary(m5)

#signif 에 있는 *찍는거 알아둬야해! 유의확률 표시방법임! 0,5 가 *, 0.01 **, 0.001 ***
이런식으로 *표시하는거
*이 찍히면 기각임. 즉 *이 찍혀야 유의한것!!! 맨마지막 acid.conc.는 *이 안찍혔기 때문에 유의하지 않음

anova(m5)



st
















































>>>>>>> 16b01887c2eaf2208c618056753b32ac8f5c7c96
