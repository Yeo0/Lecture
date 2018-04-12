<<<<<<< HEAD
xyz$type[xyz$sumx<10]="SMAll"
xyz$type[xyz$sumx>=10]="LARGE"
xyz$type=factor(xyz$type,level=c("SMALL","LARGE"))
xyz
rownames(xyz)=c("R1","R2","R3","R4")
name(xyz

sort(x1,decreasing=T)
order(x1)
x1[order(x1)]

ord


age=c(24,28,32,40)
gender=c("F","M","M","F")
gender=factor(gender,level=c("F","M"))
gender

K=data.frame(age,gender)
K[1,]
K[order(K$age),]
K[order(K$age),]
library(MASS)
str(Cars93)
head(Cars93,3)
attach(Cars93)
which(Cars93[MPG.city>=30],Model)

data.frame(Cars93[which(MPG.city>30),"Model"])
Cars93[which(MPG.city>30),"Model"]
Cars93[which(Cylinders==4 & Manufacturer=="Hyundai") ,c("Model","Min.Price","Max.Price")]
여러개면 벡터형태로


Cars93[which(),c("")]
subset(Data,변수select,조건 subset)
subset(Cars93,select=-(Model:MPG.highway),subset=(MPG.city>30))

length(airquality)

Cars93[which(),c("")]
nrow(airquality)
na.rm=T 벡터내에서
na.omit(airquality) <- 함수임!!!
sample(1:100)
sample(1:100,8)
A=sample(1:nrow(airquality),10,replace=T)
airquality[A,]
rbind c merge(data1,data2,by="name")
merge(data1,data2,by.x="",by.y="",all=T/F)
attach(Cars93)
x=split(MPG.city,Origin)
c(mean(x[[1]]),mean(x[[2]]))


tapply(MPG.city,Origin,mean)



_______-
y=c(17,16,20,24,22,15,21,18)
y[4]=23
y
sum(length(y[y>20]))
length(y[y<18])/length(y)
mean(length(y[y<18]))





rownames(A)=paste("Location",1:3,sep="")
apply(A,2,max(A))

score=c(85,91,75,69,52,95,88,100)


A=(score>=90)
B=(score>=80 & score<90)
C=(score>=70 & score<80)
D=(score>=60 & score<70)
F=(score<60)
grade=c("A","B","C","D","F")
grade=factor(grade)

cut(x,breaks,include.lowest,right,label)
CUT=cut(score,breaks=c(min(score),60,70,80,90,max(score)),include.lowest=T,right=F,labels=c("A","B","C","D","E"))
data.frame(score,grade=CUT)
data.frame(score,grade)
cut(x,breaks,include.lowest,right,labels)


영업사원=c("Park","Lee","Kim")
A=c(14,21,15)
B=c(12,16,5)
C=c(4,8,10)
품목=
K=cbind(A,B,C)
as.numeric(품목)
K=cbind(영업사원,품목)
data.frame(영업사원,품목)
list(sum=rowSums(K),mean=rowMeans(K))
list(sum=col

soju=c(23.8,23.7,24.7,25.6,23.5,24.7,25.3,26.3,25.7,24.7,23.3,24.3,24.5,24.8,24.2,24.7,25.1,26.4,28.2,25.4)
sj=data.frame(soju)

sj$year=1981:2000
attach(sj)
CUT=cut(year,breaks=c(min(year),1990,max(year)),include.lowest=T,right=T,labels=c("80's","90's"))
sj$period=CUT
sj

SPLIT=split(sj$soju,sj$period)
SPLIT
c(mean(SPLIT[[1]]),mean(SPLIT[[2]]))
SS=data.frame(mean(SPLIT[[1]]),mean(SPLIT[[2]]))
colnames(SS)=c("80's","90's")
SS


air=na.omit(airquality)
airsub1=subset(air,select=c(Ozone,Solar.R),subset=((Wind>=mean(Wind))&(Temp<mean(Temp))))
nrow(airsub1)
attach(air)
airsub11=air[which((Wind>=mean(Wind))&(Temp<mean(Temp))),c("Ozone","Solar.R")]
airsub11

nrow(airsub11)

airsub22=subset(air,select=c(Ozone,Solar.R),subset=((Wind<mean(Wind))&(Temp>=mean(Temp))))
airsub22
nrow(airsub22)

airsub2=air[which((Wind<mean(Wind))&(Temp>=mean(Temp))),c("Ozone","Solar.R")]
nrow(airsub2)

one=c(mean(airsub1$Ozone),mean(airsub1$Solar.R))
one
two=c(mean(airsub2$Ozone),mean(airsub2$Solar.R))
two
M=matrix(c(one,two),ncol=4)
colnames(M)=c("Ozone","Solar.R","Ozone","Solar.R")
M
tapply(변수,수준,함수)









=======
xyz$type[xyz$sumx<10]="SMAll"
xyz$type[xyz$sumx>=10]="LARGE"
xyz$type=factor(xyz$type,level=c("SMALL","LARGE"))
xyz
rownames(xyz)=c("R1","R2","R3","R4")
name(xyz

sort(x1,decreasing=T)
order(x1)
x1[order(x1)]

ord


age=c(24,28,32,40)
gender=c("F","M","M","F")
gender=factor(gender,level=c("F","M"))
gender

K=data.frame(age,gender)
K[1,]
K[order(K$age),]
K[order(K$age),]
library(MASS)
str(Cars93)
head(Cars93,3)
attach(Cars93)
which(Cars93[MPG.city>=30],Model)

data.frame(Cars93[which(MPG.city>30),"Model"])
Cars93[which(MPG.city>30),"Model"]
Cars93[which(Cylinders==4 & Manufacturer=="Hyundai") ,c("Model","Min.Price","Max.Price")]
여러개면 벡터형태로


Cars93[which(),c("")]
subset(Data,변수select,조건 subset)
subset(Cars93,select=-(Model:MPG.highway),subset=(MPG.city>30))

length(airquality)

Cars93[which(),c("")]
nrow(airquality)
na.rm=T 벡터내에서
na.omit(airquality) <- 함수임!!!
sample(1:100)
sample(1:100,8)
A=sample(1:nrow(airquality),10,replace=T)
airquality[A,]
rbind c merge(data1,data2,by="name")
merge(data1,data2,by.x="",by.y="",all=T/F)
attach(Cars93)
x=split(MPG.city,Origin)
c(mean(x[[1]]),mean(x[[2]]))


tapply(MPG.city,Origin,mean)



_______-
y=c(17,16,20,24,22,15,21,18)
y[4]=23
y
sum(length(y[y>20]))
length(y[y<18])/length(y)
mean(length(y[y<18]))





rownames(A)=paste("Location",1:3,sep="")
apply(A,2,max(A))

score=c(85,91,75,69,52,95,88,100)


A=(score>=90)
B=(score>=80 & score<90)
C=(score>=70 & score<80)
D=(score>=60 & score<70)
F=(score<60)
grade=c("A","B","C","D","F")
grade=factor(grade)

cut(x,breaks,include.lowest,right,label)
CUT=cut(score,breaks=c(min(score),60,70,80,90,max(score)),include.lowest=T,right=F,labels=c("A","B","C","D","E"))
data.frame(score,grade=CUT)
data.frame(score,grade)
cut(x,breaks,include.lowest,right,labels)


영업사원=c("Park","Lee","Kim")
A=c(14,21,15)
B=c(12,16,5)
C=c(4,8,10)
품목=
K=cbind(A,B,C)
as.numeric(품목)
K=cbind(영업사원,품목)
data.frame(영업사원,품목)
list(sum=rowSums(K),mean=rowMeans(K))
list(sum=col

soju=c(23.8,23.7,24.7,25.6,23.5,24.7,25.3,26.3,25.7,24.7,23.3,24.3,24.5,24.8,24.2,24.7,25.1,26.4,28.2,25.4)
sj=data.frame(soju)

sj$year=1981:2000
attach(sj)
CUT=cut(year,breaks=c(min(year),1990,max(year)),include.lowest=T,right=T,labels=c("80's","90's"))
sj$period=CUT
sj

SPLIT=split(sj$soju,sj$period)
SPLIT
c(mean(SPLIT[[1]]),mean(SPLIT[[2]]))
SS=data.frame(mean(SPLIT[[1]]),mean(SPLIT[[2]]))
colnames(SS)=c("80's","90's")
SS


air=na.omit(airquality)
airsub1=subset(air,select=c(Ozone,Solar.R),subset=((Wind>=mean(Wind))&(Temp<mean(Temp))))
nrow(airsub1)
attach(air)
airsub11=air[which((Wind>=mean(Wind))&(Temp<mean(Temp))),c("Ozone","Solar.R")]
airsub11

nrow(airsub11)

airsub22=subset(air,select=c(Ozone,Solar.R),subset=((Wind<mean(Wind))&(Temp>=mean(Temp))))
airsub22
nrow(airsub22)

airsub2=air[which((Wind<mean(Wind))&(Temp>=mean(Temp))),c("Ozone","Solar.R")]
nrow(airsub2)

one=c(mean(airsub1$Ozone),mean(airsub1$Solar.R))
one
two=c(mean(airsub2$Ozone),mean(airsub2$Solar.R))
two
M=matrix(c(one,two),ncol=4)
colnames(M)=c("Ozone","Solar.R","Ozone","Solar.R")
M
tapply(변수,수준,함수)









>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
