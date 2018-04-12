<<<<<<< HEAD
attach(cars)
plot(dist~speed)
abline(lm(dist~speed),col=4)
title("S and D")

x=(0:20)*pi/10
y=cos(x)
plot(x,y)
win.graph()
x11()
ysin=sin(x)

plot(x,ysin)

opar=par(no.readonly=T)
par(pch=19)
plot(dist~speed)
par(lty=3)

plot(dist~speed,type='b',cars)
par(opar)

plot(dist~speed,cars,type='b',cex=1,pch=5,lty=6,lwd=2)

pie(1:5,col=c("red","blue","green"))
rep(1:3)

n=10
pie(rep(1,n),col=gray(),labels=paste("gray(",1:n/n,")",sep=""))
pie(rep(1,n),col=topo.colors(n),labels=paste("gray(",1:n/n,")",sep=""))

plot(dist~speed,ann=F)
plot(dist~speed,cars,main="산점도", sub="Dist and Speed",col.main="blue",col.sub="red",cex.main=2,
cex.sub=1.2,xlab="차의속도", col.lab="green",ylab="거리",cex.lab=0.8)

plot(dist~speed,cars,axes=F,xlab="",ylab="",pch=3)
plot(dist~speed,cars,xaxt="n",yaxt="n",ylab="",xlab="")

plot(dist~speed, axes=F, xlim=c(0,30),xlab="Speed", 
ylim=c(0,130),ylab="Distance")

axis(side=1,at=x,labels=x,pos=0,tck=0.01)
axis(side=2,at=y,labels=y,pos=0,tck=-0.01)


plot(dist~speed, axes=F, xlab="Speed",ylab="Distance")

x=seq(0,30,by=5)
y=seq(0,130,by=10)
plot(dist~speed,cars,axes=F)
axis(side=1,at=x,labels,

lines(x,y=NULL,type="l")
points(x,y=NULL,type="p")

abline(10,2,h=3,v=5,reg=lm(dist~speed),coef=)
abline(coef)

library(MASS)
str(Cars93)

fit_1 <- lm(MPG.highway ~ Weight, data = Cars93)
abline(a = fit_1$coef[1], b = fit_1$coef[2])
with(Cars93, plot(MPG.highway ~ Weight))
abline(a = fit_1$coef[1], b = fit_1$coef[2], col = "black", lwd = 3)
title("adding regression line : abline(a = coef[1], b = coef[2])")
fit_1$coef # coefficients of regression model
fit_1$coef[1] # intercept
fit_1$coef[2] # slope
attach(fit_1)
abline(a=coef[1],b=coef[2])

str(Rubber)
head(Rubber)
Rubber
attach(Rubber)

with(Rubber,plot(loss~tens,type='n'))
par(no.redonly=T)
points(tens[hard>=62],loss[hard>=62],col="red",pch="●")
points(tens[hard<62],loss[hard<62],col="blue",pch=15)
plot(tens,loss)
plot(loss~tens,)

##그냥 확인용
plot(y~x)=plot(x,y)
y=c(1:5)
x=seq(1,15,by=3)
par(new=T)
par(mfrow=c(2,2))
plot(y,x)
x11()
plot(x,y)
plot(y~x)

legend(210,300,c("hard>=62","hard<62"),col=c("red","blue"),pch=c(19,15))

str(state.x77)
head(state.x77)
attach(state.x77)
plot(state.x77[,2],state.x77[,6],xlab="Income",ylab="HS Grad",pch="●",cex=0.8,col="red")

text(state.x77[,2],state.x77[,6],labels=rownames(state.x77))
k=abbreviate(rownames(state.x77),minlength=2)
k1=substr(rownames(state.x77),1,3)

par(no.readonly=T)
text(state.x77[,2],state.x77[,6],k1,cex=0.5,col="green",pos=3)

mtext("US State",side=3,line=1,cex=2,adj=0, outer=F)



par(new=T)
attach(cars)
par(mfrow=c(1,2))
hist(dist,col="skyblue")
hist(speed,col="purple")
mtext("Histogram",outer=T,cex=2)

layout(matrix(1:4,ncol=2,byrow=T))
x11()
layout(matrix(c(1,2,0,3),ncol=2),heights=c(2,1), widths=c(2,1) )












=======
attach(cars)
plot(dist~speed)
abline(lm(dist~speed),col=4)
title("S and D")

x=(0:20)*pi/10
y=cos(x)
plot(x,y)
win.graph()
x11()
ysin=sin(x)

plot(x,ysin)

opar=par(no.readonly=T)
par(pch=19)
plot(dist~speed)
par(lty=3)

plot(dist~speed,type='b',cars)
par(opar)

plot(dist~speed,cars,type='b',cex=1,pch=5,lty=6,lwd=2)

pie(1:5,col=c("red","blue","green"))
rep(1:3)

n=10
pie(rep(1,n),col=gray(),labels=paste("gray(",1:n/n,")",sep=""))
pie(rep(1,n),col=topo.colors(n),labels=paste("gray(",1:n/n,")",sep=""))

plot(dist~speed,ann=F)
plot(dist~speed,cars,main="산점도", sub="Dist and Speed",col.main="blue",col.sub="red",cex.main=2,
cex.sub=1.2,xlab="차의속도", col.lab="green",ylab="거리",cex.lab=0.8)

plot(dist~speed,cars,axes=F,xlab="",ylab="",pch=3)
plot(dist~speed,cars,xaxt="n",yaxt="n",ylab="",xlab="")

plot(dist~speed, axes=F, xlim=c(0,30),xlab="Speed", 
ylim=c(0,130),ylab="Distance")

axis(side=1,at=x,labels=x,pos=0,tck=0.01)
axis(side=2,at=y,labels=y,pos=0,tck=-0.01)


plot(dist~speed, axes=F, xlab="Speed",ylab="Distance")

x=seq(0,30,by=5)
y=seq(0,130,by=10)
plot(dist~speed,cars,axes=F)
axis(side=1,at=x,labels,

lines(x,y=NULL,type="l")
points(x,y=NULL,type="p")

abline(10,2,h=3,v=5,reg=lm(dist~speed),coef=)
abline(coef)

library(MASS)
str(Cars93)

fit_1 <- lm(MPG.highway ~ Weight, data = Cars93)
abline(a = fit_1$coef[1], b = fit_1$coef[2])
with(Cars93, plot(MPG.highway ~ Weight))
abline(a = fit_1$coef[1], b = fit_1$coef[2], col = "black", lwd = 3)
title("adding regression line : abline(a = coef[1], b = coef[2])")
fit_1$coef # coefficients of regression model
fit_1$coef[1] # intercept
fit_1$coef[2] # slope
attach(fit_1)
abline(a=coef[1],b=coef[2])

str(Rubber)
head(Rubber)
Rubber
attach(Rubber)

with(Rubber,plot(loss~tens,type='n'))
par(no.redonly=T)
points(tens[hard>=62],loss[hard>=62],col="red",pch="●")
points(tens[hard<62],loss[hard<62],col="blue",pch=15)
plot(tens,loss)
plot(loss~tens,)

##그냥 확인용
plot(y~x)=plot(x,y)
y=c(1:5)
x=seq(1,15,by=3)
par(new=T)
par(mfrow=c(2,2))
plot(y,x)
x11()
plot(x,y)
plot(y~x)

legend(210,300,c("hard>=62","hard<62"),col=c("red","blue"),pch=c(19,15))

str(state.x77)
head(state.x77)
attach(state.x77)
plot(state.x77[,2],state.x77[,6],xlab="Income",ylab="HS Grad",pch="●",cex=0.8,col="red")

text(state.x77[,2],state.x77[,6],labels=rownames(state.x77))
k=abbreviate(rownames(state.x77),minlength=2)
k1=substr(rownames(state.x77),1,3)

par(no.readonly=T)
text(state.x77[,2],state.x77[,6],k1,cex=0.5,col="green",pos=3)

mtext("US State",side=3,line=1,cex=2,adj=0, outer=F)



par(new=T)
attach(cars)
par(mfrow=c(1,2))
hist(dist,col="skyblue")
hist(speed,col="purple")
mtext("Histogram",outer=T,cex=2)

layout(matrix(1:4,ncol=2,byrow=T))
x11()
layout(matrix(c(1,2,0,3),ncol=2),heights=c(2,1), widths=c(2,1) )












>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
