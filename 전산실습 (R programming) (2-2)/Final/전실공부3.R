<<<<<<< HEAD
x=c(3,5,6)
y=c(8,4,3)
xy=c(x,y)
xy

x>y
x>3

x>3&y<7

x=1:5
length(x)
length(x[x>4]


x[2]

x=c(80,88,90,93,95,94,99,78,101)
y=1:9
y>=mean(y)
y[y>=mean(y)]

z=(x-mean(x))/sd(x)
z
x[abs(z)<=1]
abs(z)<=1
x[z<=1]
x[abs(z)>1|abs(z)<2]
x[mean(x)<=(mean(x)+sd(x))&mean(x)>=(mean(x)+sd(x))] <- 이건 내가 틀린거



X=(x>=80

mean(x)
x>=min(x)
catx=(x>=min(x))+(x>=90)+(x>=100)
catx
catx1=factor(catx,labels=c("C","B","A"))
catx1
data.frame(x,cat)

x3=cut(x,breaks=c(min(x),90,100,max(x)),include.lowest=T, right=F, labels=c("C","B","A"))
x3
class(x3)
data.frame(x,grade=x3)

x=c(1,1,2,3,2)
is.numeric(x)
xx=factor(x)
xx
is.factor(xx)
is.numeric(xx)
as.numeric(xx)
n=5
(0:n)-1
0:(n-1)

9%/%3
9%/%4
trunc(9/4)
1:4%in%1
x=1:4


x=c(1,0,3,5,NA)
is.na(x)
x==NA
mean(x,na.rm=T)
x1=1:3
x2=4:6
x3=7:9


A=cbind(x1,x2,x3)
B=rbind(x1,x2,x3)
A;B;
rownames(A)=paste("R",1:3,sep="!")


A%*%B
A*B
cbind(A,B)
rbind(A,B)
colmeans(A)
colMeans(A)
colSums(A)
rowSums(A)

crossprod(A,A)
crossprod(A)

solve(A,b)
so
b=5:6
A=matrix(c(1,2,3,4),2)
eigen(A)
diag(A)
diag(b)
diag(3)

Park=c(-0.85,-1.14,-0.04,-0.60)
Lee=c(1.31,1.34,1.18,1.44)
Kim=c(0.98,-1.29,-0.24,-0.57)

plk=rbind(Park,Lee,Kim)
colnames(plk)=paste("trial",1:4,sep="")
plk
colnames(plk)=c("trial1","trial2","trial3","trial4")
colMeans(plk)
apply(plk,1,range)

k=c(mean(plk[1,]),mean(plk[2,]),mean(plk[3,]))
k=c(range(plk[1,]),range(plk[2,]),range(plk[3,]))
matrix(k,2)

xyz=data.frame(x1=c(1,2,3,4),x2=c(5,6,7,8))
xyz
sumx=x1+x2
sumx

xyz$sumx=xyz$x1+xyz$x2
xyz$sumx
head(xyz)

attach(xyz)
xyz$sumxx=x1+x2
head(xyz)

xyz=transform(xyz,sumxxx=x1+x2, mean=(x1+x2)/2)
xyz

xyz$type[xyz$sumxxx<10]="SMALL"
xyz$type[xyz$sumxxx>=10]="LARGE"
xyz$type=factor(xyz$type,level=c("SMALL","LARGE"))
xyz

names(xyz)
names(xyz)=1:7

install.packages("reshape")
library(reshape)
xyz=rename(xyz,c(x1="age"))
xyz

x1=c(24,28,51,23)
sort(x1,decreasing=T)
order(x1)
order
x1[order(x1)]
x1[order(-x1)]

age=c(24,28,28,24)
gender=c("F","M","F","F")
gender=factor(gender)
gender
income=c(2000,3100,3800,2800)
xyz1=data.frame(age,gender,income)
attach(xyz1);
detach(xyz1)
xyz1[,order(gender, age,-income)]

library(MASS)
str(Cars93)

1.변수 MPC.city 가 30보다 큰 값 가지는 모델
2.변수 Cylinders=4, Manufacturer 가 Hyundai인 자동차의 mdel min.price,max.price 구해라

1sol
attach(Cars93)
ee=which(MPG.city>30),"Model"
nrow(data.frame(Cars93[which(MPG.city>30),"Model"]))

2sol
myvars=c("Model"
str(Cars93)
Cars93[which(Cylinders==4,Manufacturer=="Hyundai"),c("Model","Min.Price","Max.Price")]

ww=which(Cylinders==4,Manufacturer=="Hyundai")

subset(Cars93,Model,subset=(MPG.city>30))
subset(Cars93,select=c(Model,Min.Price,Max.Price), subset=(Cylinders==4 & Manufacturer==Hyundai))

head(airquality)
head(na.omit(airquality))
dim(airquality)


sample(1:100,7,replace=T)
sample(1:nrow(airquality),10)=A
na.omit(airquality[A,])

name=c("Park","Kim","Lee")
n.child=c(2,1,2)
birth.year=c(1980,1972,1975)
birth.place=c("Seoul","Daejeon","Sejong")
data1=data.frame(name,n.child)
data2=data.frame(birth.year,birth.place)
data1
data2
cbind(data1,data2)

surname=c("Park","Kim","Lee","Kwon")
n.son=c(0,1,2,1)
data3=data.frame(surname,n.son)
data3

merge(data3,data1,by.x="surname",by.y="name")


library(MASS)
x=split(Cars93$MPG.city,Cars93$Origin)
c(mean(x[[1]]),mean(x[[2]]))
tapply(MPG.city,Origin,mean)


str(cabbages)
head(cabbages)


str(state.x77)
head(state.x77)
aggregate(state.x77,by=list(Region=state.region),mean)
state.region











=======
x=c(3,5,6)
y=c(8,4,3)
xy=c(x,y)
xy

x>y
x>3

x>3&y<7

x=1:5
length(x)
length(x[x>4]


x[2]

x=c(80,88,90,93,95,94,99,78,101)
y=1:9
y>=mean(y)
y[y>=mean(y)]

z=(x-mean(x))/sd(x)
z
x[abs(z)<=1]
abs(z)<=1
x[z<=1]
x[abs(z)>1|abs(z)<2]
x[mean(x)<=(mean(x)+sd(x))&mean(x)>=(mean(x)+sd(x))] <- 이건 내가 틀린거



X=(x>=80

mean(x)
x>=min(x)
catx=(x>=min(x))+(x>=90)+(x>=100)
catx
catx1=factor(catx,labels=c("C","B","A"))
catx1
data.frame(x,cat)

x3=cut(x,breaks=c(min(x),90,100,max(x)),include.lowest=T, right=F, labels=c("C","B","A"))
x3
class(x3)
data.frame(x,grade=x3)

x=c(1,1,2,3,2)
is.numeric(x)
xx=factor(x)
xx
is.factor(xx)
is.numeric(xx)
as.numeric(xx)
n=5
(0:n)-1
0:(n-1)

9%/%3
9%/%4
trunc(9/4)
1:4%in%1
x=1:4


x=c(1,0,3,5,NA)
is.na(x)
x==NA
mean(x,na.rm=T)
x1=1:3
x2=4:6
x3=7:9


A=cbind(x1,x2,x3)
B=rbind(x1,x2,x3)
A;B;
rownames(A)=paste("R",1:3,sep="!")


A%*%B
A*B
cbind(A,B)
rbind(A,B)
colmeans(A)
colMeans(A)
colSums(A)
rowSums(A)

crossprod(A,A)
crossprod(A)

solve(A,b)
so
b=5:6
A=matrix(c(1,2,3,4),2)
eigen(A)
diag(A)
diag(b)
diag(3)

Park=c(-0.85,-1.14,-0.04,-0.60)
Lee=c(1.31,1.34,1.18,1.44)
Kim=c(0.98,-1.29,-0.24,-0.57)

plk=rbind(Park,Lee,Kim)
colnames(plk)=paste("trial",1:4,sep="")
plk
colnames(plk)=c("trial1","trial2","trial3","trial4")
colMeans(plk)
apply(plk,1,range)

k=c(mean(plk[1,]),mean(plk[2,]),mean(plk[3,]))
k=c(range(plk[1,]),range(plk[2,]),range(plk[3,]))
matrix(k,2)

xyz=data.frame(x1=c(1,2,3,4),x2=c(5,6,7,8))
xyz
sumx=x1+x2
sumx

xyz$sumx=xyz$x1+xyz$x2
xyz$sumx
head(xyz)

attach(xyz)
xyz$sumxx=x1+x2
head(xyz)

xyz=transform(xyz,sumxxx=x1+x2, mean=(x1+x2)/2)
xyz

xyz$type[xyz$sumxxx<10]="SMALL"
xyz$type[xyz$sumxxx>=10]="LARGE"
xyz$type=factor(xyz$type,level=c("SMALL","LARGE"))
xyz

names(xyz)
names(xyz)=1:7

install.packages("reshape")
library(reshape)
xyz=rename(xyz,c(x1="age"))
xyz

x1=c(24,28,51,23)
sort(x1,decreasing=T)
order(x1)
order
x1[order(x1)]
x1[order(-x1)]

age=c(24,28,28,24)
gender=c("F","M","F","F")
gender=factor(gender)
gender
income=c(2000,3100,3800,2800)
xyz1=data.frame(age,gender,income)
attach(xyz1);
detach(xyz1)
xyz1[,order(gender, age,-income)]

library(MASS)
str(Cars93)

1.변수 MPC.city 가 30보다 큰 값 가지는 모델
2.변수 Cylinders=4, Manufacturer 가 Hyundai인 자동차의 mdel min.price,max.price 구해라

1sol
attach(Cars93)
ee=which(MPG.city>30),"Model"
nrow(data.frame(Cars93[which(MPG.city>30),"Model"]))

2sol
myvars=c("Model"
str(Cars93)
Cars93[which(Cylinders==4,Manufacturer=="Hyundai"),c("Model","Min.Price","Max.Price")]

ww=which(Cylinders==4,Manufacturer=="Hyundai")

subset(Cars93,Model,subset=(MPG.city>30))
subset(Cars93,select=c(Model,Min.Price,Max.Price), subset=(Cylinders==4 & Manufacturer==Hyundai))

head(airquality)
head(na.omit(airquality))
dim(airquality)


sample(1:100,7,replace=T)
sample(1:nrow(airquality),10)=A
na.omit(airquality[A,])

name=c("Park","Kim","Lee")
n.child=c(2,1,2)
birth.year=c(1980,1972,1975)
birth.place=c("Seoul","Daejeon","Sejong")
data1=data.frame(name,n.child)
data2=data.frame(birth.year,birth.place)
data1
data2
cbind(data1,data2)

surname=c("Park","Kim","Lee","Kwon")
n.son=c(0,1,2,1)
data3=data.frame(surname,n.son)
data3

merge(data3,data1,by.x="surname",by.y="name")


library(MASS)
x=split(Cars93$MPG.city,Cars93$Origin)
c(mean(x[[1]]),mean(x[[2]]))
tapply(MPG.city,Origin,mean)


str(cabbages)
head(cabbages)


str(state.x77)
head(state.x77)
aggregate(state.x77,by=list(Region=state.region),mean)
state.region











>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
