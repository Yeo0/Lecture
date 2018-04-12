<<<<<<< HEAD
x=c(1,3,5,-4,10)
y=c("one","two","three")
z=c(TRUE,TRUE,FALSE,FALSE,TRUE)


a=1
a
b=c(2)
b


x
x[2]
x[c(1,3,5)]
x[c(TRUE,TRUE,FALSE,FALSE,TRUE)]
x[z]
x[6]


#13p연습
x[2]+x[3] or
sum(c(x[2],x[3]))

(x[1]+x[5])/2 or
mean(c(x[1],x[5]))

x.last=length(x)   #x의 마지막 값을 찾는 명령문
mean(c(x[1],x[x.last])) #x의 마지막이 몇번째인지 모를때


sum(x[x>2])


#212 factor

gender=c("Male","Female","Female","Male","Female")
f.gender=factor(gender)
gender
f.gender

income=c("Low","Low","Medium","High","Medium")
f.income=factor(income,order=T)
f.income #알파벳 순서대로 됨 > 우리가 원하는게 아님

f.income=factor(income,order=T,level=c("Low","Medium","High"))
f.income



#213 matrix
1:9
c(1:9)
x=matrix(1:9,nrow=3)
x

y=matrix(1:9,nrow=3,byrow=T)
y

rnames=c("R1","R2","R3")
cnames=c("C1","C2","C3")

z=matrix(1:9,nrow=3,dimnames=list(rnames,cnames))
z


x
x[2,3] #행,열 순서
x[1,]
x[,2]
x[c(1,2),2]



















=======
x=c(1,3,5,-4,10)
y=c("one","two","three")
z=c(TRUE,TRUE,FALSE,FALSE,TRUE)


a=1
a
b=c(2)
b


x
x[2]
x[c(1,3,5)]
x[c(TRUE,TRUE,FALSE,FALSE,TRUE)]
x[z]
x[6]


#13p연습
x[2]+x[3] or
sum(c(x[2],x[3]))

(x[1]+x[5])/2 or
mean(c(x[1],x[5]))

x.last=length(x)   #x의 마지막 값을 찾는 명령문
mean(c(x[1],x[x.last])) #x의 마지막이 몇번째인지 모를때


sum(x[x>2])


#212 factor

gender=c("Male","Female","Female","Male","Female")
f.gender=factor(gender)
gender
f.gender

income=c("Low","Low","Medium","High","Medium")
f.income=factor(income,order=T)
f.income #알파벳 순서대로 됨 > 우리가 원하는게 아님

f.income=factor(income,order=T,level=c("Low","Medium","High"))
f.income



#213 matrix
1:9
c(1:9)
x=matrix(1:9,nrow=3)
x

y=matrix(1:9,nrow=3,byrow=T)
y

rnames=c("R1","R2","R3")
cnames=c("C1","C2","C3")

z=matrix(1:9,nrow=3,dimnames=list(rnames,cnames))
z


x
x[2,3] #행,열 순서
x[1,]
x[,2]
x[c(1,2),2]



















>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
