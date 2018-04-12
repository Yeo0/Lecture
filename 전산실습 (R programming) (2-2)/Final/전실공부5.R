<<<<<<< HEAD
x=1
for(i in 1:5){
x=x*i
cat(i,"!=",x,"\n",sep="")
}

x=1
for(i in 1:5){
x=x*i
print(x)
}


i=1
x=1
while(i<=5){
x=x*i
cat(i,"!=",x,"\n",sep="")
i=i+1
}

i=1
x=1
while(i<=5){
x=x*i
print(x)
i=i+1
}

i=1:10
x=3
if(i<=3){
print(i)
i=i+1
}else{
print(x)
i=i+1
}



a=1
b=4
c=3
D=b^2-4*a*c

if(D>0){
ans=c((-b +sqrt(D))/2*a , (-b -sqrt(D))/2*a)
}else if(D==0){
ans=-b/2*a
}else{
ans="no answer"}

print(ans)




x=c(10,3,6,9)
y=c(1,5,4,12)
ifelse(x>y,x,y)

score=c(80,75,40,98,100,25)

s=ifelse(score>=50,"pass","fail")
data.frame(score,s)

f1=function(x,y){x+y
}
f1(2,3)

f2=function(x,y=5){x+y
}
f2(2)

plot1=function(x,y,...){
plot(x,y)
}

plot2=function(x,y){
plot(x,y)
}

attach(cars)
plot1(speed,dist)
plot1(speed,dist,col="red",pch=19)
plot2(speed,dist)
plot2(speed,dist,col="red",pch=19)

f3=function(first,second)first^second
f3(2,5)
f3(first=2,second=5)
f3(f=2,s=5)


f4=function(x){
mx=mean(x)
sdx=sd(x)
cat("mean=",mx,"\n","sd=",sdx,"\n",sep="")
}

f4(cars$dist)

f5=function(x){
mx=mean(x)
sdx=sd(x)
ans=list(mean=mx,sd=sdx)
return(ans)
}

f5(cars$dist)


help(runif)
plot(runif)
runif(1)-0.5


x=runif(1)-0.5
x

if(x<0) print(abs(x))
if(x<0) print(abs(x)) else print(x)

ifelse(x<0,abs(x),x)

if(x<0) {print(x); print("X is negative")
} else {print(x); print("X is positive")}

if(x>=-0.5 && x<=0.5) print(x) else print("wrong number")

복합조건문
x=c(1,2,5,7,8)
y=c(3,7,5,2,1)
w=2
u=7
(x>2)&(y>3) 
(x>2)&&(y>3) #첫번째 값이 그 결과값 됨
(w>2)&(u>3)
(w>2)&&(u>3)
(x>2)|(y>3)
(x>2)||(y>3)
(w>2)|(u>3)


#실습#
1.1부터 5까지 합계산
x=0
for(i in 1:5){
x=x+i
print(x)
}

x=0
i=1
while(i<=5){
x=x+i
cat("sum to",i,"=",x,"\n",sep="")
i=i+1
}

2.1부터 1000까지 더해서 결과값만 보고싶다면?
x=0
for(i in 1:1000){
x=x+i
}
print(x)

sumx=0
i=1
while(i<=1000){
sumx=sumx+i
i=i+1
}
print(sumx)

3. 2의 평균
x=0
for(i in 1:1000){
x=x+i
}
print(x/i)


4.(1,1,1,8,9) 의평균

x=0
y=c(1,1,1,8,9)
for(i in y){
x=x+i
}
print(x/length(y))	

x=0
i=1
y=c(1,1,1,8,9)
while(i<=length(y)){
x=x+y[i]
i=i+1
}
print(x/length(y))

5. 4에서 첫번째 세번째 다섯번째 합
x=0
i=1
y=c(1,1,1,8,9)
while(i<=length(y)){
x=x+y[i]
i=i+2
}
print(x)

or

x=0
y=c(1,1,1,8,9)
for(i in c(y[1],y[3],y[5])){
x=x+i
}
print(x)


!!!!!!6. 1부터 10까지 피보나치 수열 출력

fibo <- function(n){
    fibo1 = 1
    fibo2 = 1
    for(i in 3:n){
        tmp = fibo1+fibo2
        fibo1 = fibo2
        fibo2 = tmp
    }
    return(fibo2)
}

7.이차방정식의 근을 구하는 함수
a*x^2+b*x+c=0
X=function(a,b,c){
if(a==0){
 ans="이차방정식아님"
} else {
 D=b^2-4*a*c
  if(D>0){
   ans=c((-b-sqrt(D))/2*a,(-b+sqrt(D))/2*a)
  }else if (D==0){
   ans=-b/2*a
  }else{
   ans="no answer"
  }
 }
print(ans)
}

X(1,4,3)
X(a=1,b=4,c=3)


8. 주어진 데이터의 요약 통계량 계산
 


!!!!9. 주어진 수가 짝순지 홀순지 (하나의 값에 대해서)
for while
if if elseif ifelse

설계 : X%%2==0이면 짝수 아님홀수


K=function(x){
if(x%%2==0){
ans="짝수"
} else{
ans="홀수"
}
return(ans)
}


K(623)



10. 주어진 벡터가 짝순지 홀순지 데이터프레임으로 출력




11. 주어진 수가 양수인지 0인지 음수인지 데이터프레임으로















































=======
x=1
for(i in 1:5){
x=x*i
cat(i,"!=",x,"\n",sep="")
}

x=1
for(i in 1:5){
x=x*i
print(x)
}


i=1
x=1
while(i<=5){
x=x*i
cat(i,"!=",x,"\n",sep="")
i=i+1
}

i=1
x=1
while(i<=5){
x=x*i
print(x)
i=i+1
}

i=1:10
x=3
if(i<=3){
print(i)
i=i+1
}else{
print(x)
i=i+1
}



a=1
b=4
c=3
D=b^2-4*a*c

if(D>0){
ans=c((-b +sqrt(D))/2*a , (-b -sqrt(D))/2*a)
}else if(D==0){
ans=-b/2*a
}else{
ans="no answer"}

print(ans)




x=c(10,3,6,9)
y=c(1,5,4,12)
ifelse(x>y,x,y)

score=c(80,75,40,98,100,25)

s=ifelse(score>=50,"pass","fail")
data.frame(score,s)

f1=function(x,y){x+y
}
f1(2,3)

f2=function(x,y=5){x+y
}
f2(2)

plot1=function(x,y,...){
plot(x,y)
}

plot2=function(x,y){
plot(x,y)
}

attach(cars)
plot1(speed,dist)
plot1(speed,dist,col="red",pch=19)
plot2(speed,dist)
plot2(speed,dist,col="red",pch=19)

f3=function(first,second)first^second
f3(2,5)
f3(first=2,second=5)
f3(f=2,s=5)


f4=function(x){
mx=mean(x)
sdx=sd(x)
cat("mean=",mx,"\n","sd=",sdx,"\n",sep="")
}

f4(cars$dist)

f5=function(x){
mx=mean(x)
sdx=sd(x)
ans=list(mean=mx,sd=sdx)
return(ans)
}

f5(cars$dist)


help(runif)
plot(runif)
runif(1)-0.5


x=runif(1)-0.5
x

if(x<0) print(abs(x))
if(x<0) print(abs(x)) else print(x)

ifelse(x<0,abs(x),x)

if(x<0) {print(x); print("X is negative")
} else {print(x); print("X is positive")}

if(x>=-0.5 && x<=0.5) print(x) else print("wrong number")

복합조건문
x=c(1,2,5,7,8)
y=c(3,7,5,2,1)
w=2
u=7
(x>2)&(y>3) 
(x>2)&&(y>3) #첫번째 값이 그 결과값 됨
(w>2)&(u>3)
(w>2)&&(u>3)
(x>2)|(y>3)
(x>2)||(y>3)
(w>2)|(u>3)


#실습#
1.1부터 5까지 합계산
x=0
for(i in 1:5){
x=x+i
print(x)
}

x=0
i=1
while(i<=5){
x=x+i
cat("sum to",i,"=",x,"\n",sep="")
i=i+1
}

2.1부터 1000까지 더해서 결과값만 보고싶다면?
x=0
for(i in 1:1000){
x=x+i
}
print(x)

sumx=0
i=1
while(i<=1000){
sumx=sumx+i
i=i+1
}
print(sumx)

3. 2의 평균
x=0
for(i in 1:1000){
x=x+i
}
print(x/i)


4.(1,1,1,8,9) 의평균

x=0
y=c(1,1,1,8,9)
for(i in y){
x=x+i
}
print(x/length(y))	

x=0
i=1
y=c(1,1,1,8,9)
while(i<=length(y)){
x=x+y[i]
i=i+1
}
print(x/length(y))

5. 4에서 첫번째 세번째 다섯번째 합
x=0
i=1
y=c(1,1,1,8,9)
while(i<=length(y)){
x=x+y[i]
i=i+2
}
print(x)

or

x=0
y=c(1,1,1,8,9)
for(i in c(y[1],y[3],y[5])){
x=x+i
}
print(x)


!!!!!!6. 1부터 10까지 피보나치 수열 출력

fibo <- function(n){
    fibo1 = 1
    fibo2 = 1
    for(i in 3:n){
        tmp = fibo1+fibo2
        fibo1 = fibo2
        fibo2 = tmp
    }
    return(fibo2)
}

7.이차방정식의 근을 구하는 함수
a*x^2+b*x+c=0
X=function(a,b,c){
if(a==0){
 ans="이차방정식아님"
} else {
 D=b^2-4*a*c
  if(D>0){
   ans=c((-b-sqrt(D))/2*a,(-b+sqrt(D))/2*a)
  }else if (D==0){
   ans=-b/2*a
  }else{
   ans="no answer"
  }
 }
print(ans)
}

X(1,4,3)
X(a=1,b=4,c=3)


8. 주어진 데이터의 요약 통계량 계산
 


!!!!9. 주어진 수가 짝순지 홀순지 (하나의 값에 대해서)
for while
if if elseif ifelse

설계 : X%%2==0이면 짝수 아님홀수


K=function(x){
if(x%%2==0){
ans="짝수"
} else{
ans="홀수"
}
return(ans)
}


K(623)



10. 주어진 벡터가 짝순지 홀순지 데이터프레임으로 출력




11. 주어진 수가 양수인지 0인지 음수인지 데이터프레임으로















































>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
