<<<<<<< HEAD
class(state.region)
plot(state.region)
x11()
k=table(state.region)
barplot(k)

class(k)
str(state.region)
barplot(k, main="simple",sub="chart",xlab="Region",ylab="Frequency",horiz=T)
legend (이거 이름 돌리는거ㅠㅠ)


str(mtcars)
table(mtcars$cyl)
barplot(table(mtcars$cyl))
factor(mtcars$cyl)
plot(factor(mtcars$cyl), names.arg=c("4c","6c","8c"))


region=names(k)
region
pie(table(state.region),labels=region,main="simple pie chart")
counts=table(state.region)
p=(counts/sum(counts))*100

pie(counts,labels=paste(region,"(",p,"%)"),main="SPC")

library(plotrix)
install.packages("plotrix")
library(plotrix)
pie3D(counts,labels=names(counts),main="pie3D chart")

fan.plot(counts, labels=paste(region,"(",p,"%)"),col=c("skyblue","purple","ivory","orange"))
region=names(counts)
p=(counts/sum(counts))*100

dotchart(as.numeric(counts),labels=names(counts))

str(women)
attach(women)
head(women)
stem(c(height,weight),scale=4)
x=c(


library(UsingR)
str(alltime.movies)
attach(alltime.movies)
boxplot(Gross,horizonal=F)
barplot(table(state.region),horiz=T)

mb=boxplot(Gross,horizontal=T)
names(mb)
str(mb)
mb$out

help(seq)
seq(35,105,length=10)
hist(Gross,breaks="Scott")
help(hist)

str(faithful)
attach(faithful)
hist(faithful$waiting,main="hist")
hist(faithful$waiting,breaks=seq(40,100,length=10),col="skyblue")

mean(waiting)
median(waiting)
myid=which(table(waiting)==max(table(waiting)))

table(waiting)[myid]

str(airquality)
attach(airquality)
summary(Ozone)
mean(Ozone,na.rm=T)
median(Ozone,na.rm=T)
table(Ozone)

myid2=which(table(Ozone)==max(table(Ozone)))
table(Ozone)[myid2]
cfb
str(cfb)
attach(cfb)
mean(INCOME)
median(INCOME)
median(INCOME,na.rm=T)
myid3=which(table(INCOME)==max(table(INCOME)))
table(INCOME)[myid3]
hist(INCOME,breaks=50)
logincome=log(INCOME)
hist(logincome,breaks=20)
range(logincome)
rug(logincome)

log1income=log(INCOME+1)
range(log1income)
hist(log1income)
rug(log1income)
mean(log1income)
median(log1income)

test1=c(75,77,80,82,85,87,88)
test2=c(50,57,80,82,86,100,100)
mean(test1)
mean(test2)
median(test1)
median(test2)
range(test1)
range(test1)[2]-range(test1)[1]
range(test2)
range(test2)[2]-range(test2)[1]
diff(range(test1))
diff(range(test2))
IQR(test1)
quantile(test1,probs=0.75)-quantile(test1,probs=0.25)

mean(INCOME<=mean(INCOME))
mean(INCOME<=mean(INCOME))
x11()
plot(scale(test1,center=T,scale=F))

=======
class(state.region)
plot(state.region)
x11()
k=table(state.region)
barplot(k)

class(k)
str(state.region)
barplot(k, main="simple",sub="chart",xlab="Region",ylab="Frequency",horiz=T)
legend (이거 이름 돌리는거ㅠㅠ)


str(mtcars)
table(mtcars$cyl)
barplot(table(mtcars$cyl))
factor(mtcars$cyl)
plot(factor(mtcars$cyl), names.arg=c("4c","6c","8c"))


region=names(k)
region
pie(table(state.region),labels=region,main="simple pie chart")
counts=table(state.region)
p=(counts/sum(counts))*100

pie(counts,labels=paste(region,"(",p,"%)"),main="SPC")

library(plotrix)
install.packages("plotrix")
library(plotrix)
pie3D(counts,labels=names(counts),main="pie3D chart")

fan.plot(counts, labels=paste(region,"(",p,"%)"),col=c("skyblue","purple","ivory","orange"))
region=names(counts)
p=(counts/sum(counts))*100

dotchart(as.numeric(counts),labels=names(counts))

str(women)
attach(women)
head(women)
stem(c(height,weight),scale=4)
x=c(


library(UsingR)
str(alltime.movies)
attach(alltime.movies)
boxplot(Gross,horizonal=F)
barplot(table(state.region),horiz=T)

mb=boxplot(Gross,horizontal=T)
names(mb)
str(mb)
mb$out

help(seq)
seq(35,105,length=10)
hist(Gross,breaks="Scott")
help(hist)

str(faithful)
attach(faithful)
hist(faithful$waiting,main="hist")
hist(faithful$waiting,breaks=seq(40,100,length=10),col="skyblue")

mean(waiting)
median(waiting)
myid=which(table(waiting)==max(table(waiting)))

table(waiting)[myid]

str(airquality)
attach(airquality)
summary(Ozone)
mean(Ozone,na.rm=T)
median(Ozone,na.rm=T)
table(Ozone)

myid2=which(table(Ozone)==max(table(Ozone)))
table(Ozone)[myid2]
cfb
str(cfb)
attach(cfb)
mean(INCOME)
median(INCOME)
median(INCOME,na.rm=T)
myid3=which(table(INCOME)==max(table(INCOME)))
table(INCOME)[myid3]
hist(INCOME,breaks=50)
logincome=log(INCOME)
hist(logincome,breaks=20)
range(logincome)
rug(logincome)

log1income=log(INCOME+1)
range(log1income)
hist(log1income)
rug(log1income)
mean(log1income)
median(log1income)

test1=c(75,77,80,82,85,87,88)
test2=c(50,57,80,82,86,100,100)
mean(test1)
mean(test2)
median(test1)
median(test2)
range(test1)
range(test1)[2]-range(test1)[1]
range(test2)
range(test2)[2]-range(test2)[1]
diff(range(test1))
diff(range(test2))
IQR(test1)
quantile(test1,probs=0.75)-quantile(test1,probs=0.25)

mean(INCOME<=mean(INCOME))
mean(INCOME<=mean(INCOME))
x11()
plot(scale(test1,center=T,scale=F))

>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
