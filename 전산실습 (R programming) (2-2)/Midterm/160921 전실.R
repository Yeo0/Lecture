<<<<<<< HEAD
y=array(1:24,c(4,3,2))
y

y[3,2,1]
y[,,1]
y[1,,2]


x=1:12
dim(x)=c(3,4)
x
dim(x)


y=1:24
dim(y)=c(3,4,2)
y
dim(y)

x1=c(24,28,31,25)
y1=c("F","M","F","F")
xy=data.frame(x1,y1)
xy

xy=data.frame(age=x1, gender=y1)


z1=c(2000,3100,3800,2800)
xyz=data.frame(age=x1, gender=y1, income=z1)
xyz

xyz[[1]]
xyz[,1]

xyz[["age"]]
xyz$age
xyz["age"]


xyz[,c(1,3)]
xyz[c("age","income")]

xyz[,1]
xyz[,c(1,3)]


연습)
xyz[c(2,3),c(1,3)]



##215리스트

a=c("one","two","three")
b=1:10
c=matrix(1:9,nrow=3)
d=data.frame(age=c(24,28,31,25),gender=c("F","M","F","M"))
L=list(vec=a,b, mat=c,d) #a랑 c만 이름을 붙인거임,b,d,는 아님

L














=======
y=array(1:24,c(4,3,2))
y

y[3,2,1]
y[,,1]
y[1,,2]


x=1:12
dim(x)=c(3,4)
x
dim(x)


y=1:24
dim(y)=c(3,4,2)
y
dim(y)

x1=c(24,28,31,25)
y1=c("F","M","F","F")
xy=data.frame(x1,y1)
xy

xy=data.frame(age=x1, gender=y1)


z1=c(2000,3100,3800,2800)
xyz=data.frame(age=x1, gender=y1, income=z1)
xyz

xyz[[1]]
xyz[,1]

xyz[["age"]]
xyz$age
xyz["age"]


xyz[,c(1,3)]
xyz[c("age","income")]

xyz[,1]
xyz[,c(1,3)]


연습)
xyz[c(2,3),c(1,3)]



##215리스트

a=c("one","two","three")
b=1:10
c=matrix(1:9,nrow=3)
d=data.frame(age=c(24,28,31,25),gender=c("F","M","F","M"))
L=list(vec=a,b, mat=c,d) #a랑 c만 이름을 붙인거임,b,d,는 아님

L














>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
