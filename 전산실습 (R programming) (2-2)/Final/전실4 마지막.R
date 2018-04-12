<<<<<<< HEAD
axis(side,at,labels,pos,las,tck)
line(x,y=NULL,type="l"
points(x,y=NULL, type="p")
abline(a,b)
abline(v=mean(x))
abline(h=mean(y))
abline(reg=lm(y~x))
legend(위치 내용)
위치는 좌표나 topleft top topright
           left   center   right
           bottomleft botom bottomright
내용 c(A,B) 
text

par(no.readonly=T)
ann=F
axes=F


air=na.omit(airquality)
str(air)
attach(air)
plot(Ozone~Solar.R,type='n')
points(Ozone[(Wind>=mean(Wind))&(Temp<mean(Temp))],Solar.R[(Wind>=mean(Wind))&(Temp<mean(Temp))],col="skyblue",pch=19,cex=0.8)
points(Ozone[(Wind<mean(Wind))&(Temp>=mean(Temp))],Solar.R[(Wind<mean(Wind))&(Temp>=mean(Temp))],col="orange",pch=3, cex=0.8)            

mean(Wind)
points(Ozone,Solar.R,(Wind>=mean(Wind))&(Temp<mean(Temp)),col="skyblue",pch=19,cex=0.8)
plot(Ozone~Solar.R)

library(MASS)
str(Rubber)
attach(Rubber)
plot(loss~tens,type="n")
points(tens[hard>=62],loss[hard<62],col="skyblue",pch=19,cex=0.8)
points(tens[hard<62],loss[hard>=62],col="orange",pch=15,cex=0.8)

str(cars)
attach(cars)
plot(dist~speed),ann=F)
title(main=,sub=,col.main=,cex.main=,col.sub= cex.sub= xlab= ylab= col.lab cex.lab

이름들제거ann=F
축들제거 axes=F

axis(side=,at=,labels= pos= las= tck=

x축 눈금제거 xaxt="n"
y축 눈금제거 yaxt=""
par(no.readonly)
x=seq(0,30,5)
y=seq(0,130,10)
plot(dist~speed, axes=F, xlim=c(0,30), ylim=c(0,130))
axis(side=1,at=x,labels=x,pos=0,las=0,tck=0.01)
axis(side=2,at=y,labels=y,pos=0,las=2,tck=-0.01)

plot(dist~speed)
abline(lm(dist~speed),col="blue",lty=1.2)
abline(h=mean(dist),col="pink",lty=1.5)
abline(v=mean(speed),col="green",lty=1.5)

str(Rubber)
attach(Rubber)
plot(tens,loss,type="n")
points(tens[hard>=62],loss[hard>=62],col="red",pch=19,cex=1.2)
points(tens[hard<62],loss[hard<62],col="blue",pch=15,cex=1.2)

legend(200,360,c("up to 62","down to 62"),col=c("red","blue"), pch=c(19,15))

detach(Rubber)
head(state.x77)
str(state.x77)
attach(state.x77)
rownames(state.x77)
x=state.x77[,2]
y=state.x77[,6]
plot(x,y,xlab="Income",ylab="Anumli",cex=0.8)
text(x,y,labels=substr(rownames(state.x77),1,3),pos=3,cex=1)
mtext("Us state",side=3,line=1,adj=0)

text(x,y,labels,pos,cex)
mtext("",side, line,adj)

layout(matrio,heights widths




문제풀고
프린트 예 한번씩 돌려보기



















=======
axis(side,at,labels,pos,las,tck)
line(x,y=NULL,type="l"
points(x,y=NULL, type="p")
abline(a,b)
abline(v=mean(x))
abline(h=mean(y))
abline(reg=lm(y~x))
legend(위치 내용)
위치는 좌표나 topleft top topright
           left   center   right
           bottomleft botom bottomright
내용 c(A,B) 
text

par(no.readonly=T)
ann=F
axes=F


air=na.omit(airquality)
str(air)
attach(air)
plot(Ozone~Solar.R,type='n')
points(Ozone[(Wind>=mean(Wind))&(Temp<mean(Temp))],Solar.R[(Wind>=mean(Wind))&(Temp<mean(Temp))],col="skyblue",pch=19,cex=0.8)
points(Ozone[(Wind<mean(Wind))&(Temp>=mean(Temp))],Solar.R[(Wind<mean(Wind))&(Temp>=mean(Temp))],col="orange",pch=3, cex=0.8)            

mean(Wind)
points(Ozone,Solar.R,(Wind>=mean(Wind))&(Temp<mean(Temp)),col="skyblue",pch=19,cex=0.8)
plot(Ozone~Solar.R)

library(MASS)
str(Rubber)
attach(Rubber)
plot(loss~tens,type="n")
points(tens[hard>=62],loss[hard<62],col="skyblue",pch=19,cex=0.8)
points(tens[hard<62],loss[hard>=62],col="orange",pch=15,cex=0.8)

str(cars)
attach(cars)
plot(dist~speed),ann=F)
title(main=,sub=,col.main=,cex.main=,col.sub= cex.sub= xlab= ylab= col.lab cex.lab

이름들제거ann=F
축들제거 axes=F

axis(side=,at=,labels= pos= las= tck=

x축 눈금제거 xaxt="n"
y축 눈금제거 yaxt=""
par(no.readonly)
x=seq(0,30,5)
y=seq(0,130,10)
plot(dist~speed, axes=F, xlim=c(0,30), ylim=c(0,130))
axis(side=1,at=x,labels=x,pos=0,las=0,tck=0.01)
axis(side=2,at=y,labels=y,pos=0,las=2,tck=-0.01)

plot(dist~speed)
abline(lm(dist~speed),col="blue",lty=1.2)
abline(h=mean(dist),col="pink",lty=1.5)
abline(v=mean(speed),col="green",lty=1.5)

str(Rubber)
attach(Rubber)
plot(tens,loss,type="n")
points(tens[hard>=62],loss[hard>=62],col="red",pch=19,cex=1.2)
points(tens[hard<62],loss[hard<62],col="blue",pch=15,cex=1.2)

legend(200,360,c("up to 62","down to 62"),col=c("red","blue"), pch=c(19,15))

detach(Rubber)
head(state.x77)
str(state.x77)
attach(state.x77)
rownames(state.x77)
x=state.x77[,2]
y=state.x77[,6]
plot(x,y,xlab="Income",ylab="Anumli",cex=0.8)
text(x,y,labels=substr(rownames(state.x77),1,3),pos=3,cex=1)
mtext("Us state",side=3,line=1,adj=0)

text(x,y,labels,pos,cex)
mtext("",side, line,adj)

layout(matrio,heights widths




문제풀고
프린트 예 한번씩 돌려보기



















>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
