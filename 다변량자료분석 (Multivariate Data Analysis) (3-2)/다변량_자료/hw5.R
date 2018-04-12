<<<<<<< HEAD
#Calculate


r1=1.96
r2=0.68
r3=0.36

e1=c(0.625,0.593,0.507)
e2=c(-0.219,-0.491,0.843)
e3=c(0.749,-0.638,-0.177)


e1*t(e1)
dim(e1*t(e1))



r1*(e1%*%t(e1))+r2*(e2%*%t(e2))+r3*(e3%*%t(e3))
sqrt(r1)*e1
sqrt(r2)*e2
sqrt(r3)*e3

L=matrix(c(sqrt(r1)*e1,sqrt(r2)*e2,sqrt(r3)*e3), 3)
L%*%t(L)

c1=c(1,0.738,0.731,0.828,0.681,0.712,0.625,0.604)
c2=c(0.738,1,0.52,0.688,0.831,0.543,0.322,0.303)
c3=c(0.731,0.520,1,0.652,0.513,0.826,0.579,0.617)
c4=c(0.828,0.688,0.652,1,0.887,0.867,0.639,0.563)
c5=c(0.681,0.831,0.513,0.887,1,0.692,0.419,0.352)
c6=c(0.712,0.543,0.826,0.867,0.692,1,0.608,0.610)
c7=c(0.625,0.322,0.579,0.639,0.419,0.608,1,0.937)
c8=c(0.604,0.303,0.617,0.563,0.352,0.610,0.937,1)

C=matrix(c(c1,c2,c3,c4,c5,c6,c7,c8),8)
TC=t(C)
install.packages("dplyr")
library(dplyr)

all_equal(C,TC)

princomp(C)
plot(prcomp(C), type="l", main="screeplot")

summary(prcomp(C))

install.packages("psych")
library(psych)

principal(C, nfactors = 3, rotate="varimax")$communality
diag(var(C))
diag(var(C))-(principal(C, nfactors = 3, rotate="varimax")$communality)^2
C
ls(principal(C, nfactors = 3, rotate="varimax"))

principal(C, nfactors = 3, rotate="varimax")$residual
principal(C, nfactors = 3, rotate="varimax")$loadings

biplot(principal(C, nfactors = 3, rotate="varimax"))
?biplot
=======
#Calculate


r1=1.96
r2=0.68
r3=0.36

e1=c(0.625,0.593,0.507)
e2=c(-0.219,-0.491,0.843)
e3=c(0.749,-0.638,-0.177)


e1*t(e1)
dim(e1*t(e1))



r1*(e1%*%t(e1))+r2*(e2%*%t(e2))+r3*(e3%*%t(e3))
sqrt(r1)*e1
sqrt(r2)*e2
sqrt(r3)*e3

L=matrix(c(sqrt(r1)*e1,sqrt(r2)*e2,sqrt(r3)*e3), 3)
L%*%t(L)

c1=c(1,0.738,0.731,0.828,0.681,0.712,0.625,0.604)
c2=c(0.738,1,0.52,0.688,0.831,0.543,0.322,0.303)
c3=c(0.731,0.520,1,0.652,0.513,0.826,0.579,0.617)
c4=c(0.828,0.688,0.652,1,0.887,0.867,0.639,0.563)
c5=c(0.681,0.831,0.513,0.887,1,0.692,0.419,0.352)
c6=c(0.712,0.543,0.826,0.867,0.692,1,0.608,0.610)
c7=c(0.625,0.322,0.579,0.639,0.419,0.608,1,0.937)
c8=c(0.604,0.303,0.617,0.563,0.352,0.610,0.937,1)

C=matrix(c(c1,c2,c3,c4,c5,c6,c7,c8),8)
TC=t(C)
install.packages("dplyr")
library(dplyr)

all_equal(C,TC)

princomp(C)
plot(prcomp(C), type="l", main="screeplot")

summary(prcomp(C))

install.packages("psych")
library(psych)

principal(C, nfactors = 3, rotate="varimax")$communality
diag(var(C))
diag(var(C))-(principal(C, nfactors = 3, rotate="varimax")$communality)^2
C
ls(principal(C, nfactors = 3, rotate="varimax"))

principal(C, nfactors = 3, rotate="varimax")$residual
principal(C, nfactors = 3, rotate="varimax")$loadings

biplot(principal(C, nfactors = 3, rotate="varimax"))
?biplot
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
