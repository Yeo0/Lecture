<<<<<<< HEAD
c(4,25,19,3,7)의 135번째 값 합
x=0

for(i in c(y[1],y[3],y[5])){
x=x+i
}
print(x)

x=0
y=c(4,25,19,3,7)
i=1
while(i<=length(y)){
x=x+y[i]
print(x)
i=i+2
}

이차함수 식
f1=function(a,b,c){
if(a==0){
ans="이차방정식이 아닙니다"
}else{
 D=b^2-4*a*c
 if(D>0){
 ans=c((-b-sqrt(D))/2*a,(-b+sqrt(D))/2*a)
 } else if(D==0){
 ans=(-b)/2*a
 } else{
 ans="No Answer"
 }
 }
 return(ans)
}

f1(1,4,3)

피보나치수열
x1=1
x2=1
for(i in 1:10){
x3=x1+x2
x1=x2
x2=x3
print(x3)
}

주어진 수가 짝수인지 아닌지

f3=function(x){
if(x%%2==0){
ans="짝수"
} else{
ans="홀수"
}
return(ans)
}
f3(253)
f3(2)

주어진 벡터가 짝수인지 아닌지
f4=function(x){
짝홀=ifelse(x%%2==0,"짝수","홀수")
data.frame(짝홀)
}
f4(c(234,253,23,20,59))

양수인지 음수인지 0인지 판단

f6=function(x){
 k=ifelse(x>0,"양수",
 ifelse(x==0,0,"음수")
  )
 data.frame("부호"=k)
}
f6(c(4,-2,3,-8,0,1))



(x>2)$(y<6)
 (x>2)|(y<6)




















=======
c(4,25,19,3,7)의 135번째 값 합
x=0

for(i in c(y[1],y[3],y[5])){
x=x+i
}
print(x)

x=0
y=c(4,25,19,3,7)
i=1
while(i<=length(y)){
x=x+y[i]
print(x)
i=i+2
}

이차함수 식
f1=function(a,b,c){
if(a==0){
ans="이차방정식이 아닙니다"
}else{
 D=b^2-4*a*c
 if(D>0){
 ans=c((-b-sqrt(D))/2*a,(-b+sqrt(D))/2*a)
 } else if(D==0){
 ans=(-b)/2*a
 } else{
 ans="No Answer"
 }
 }
 return(ans)
}

f1(1,4,3)

피보나치수열
x1=1
x2=1
for(i in 1:10){
x3=x1+x2
x1=x2
x2=x3
print(x3)
}

주어진 수가 짝수인지 아닌지

f3=function(x){
if(x%%2==0){
ans="짝수"
} else{
ans="홀수"
}
return(ans)
}
f3(253)
f3(2)

주어진 벡터가 짝수인지 아닌지
f4=function(x){
짝홀=ifelse(x%%2==0,"짝수","홀수")
data.frame(짝홀)
}
f4(c(234,253,23,20,59))

양수인지 음수인지 0인지 판단

f6=function(x){
 k=ifelse(x>0,"양수",
 ifelse(x==0,0,"음수")
  )
 data.frame("부호"=k)
}
f6(c(4,-2,3,-8,0,1))



(x>2)$(y<6)
 (x>2)|(y<6)




















>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
