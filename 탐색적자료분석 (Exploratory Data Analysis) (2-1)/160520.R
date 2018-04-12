<<<<<<< HEAD
#7.4 2원 빈도 표 분석-빈도표, 교차표 (범주형변수 2개)

install.packages("vcd")
library(vcd)
attach(Arthritis)
head(Arthritis)

table(Improved) # 다 빈도표 (빈도내는 젤 간단한 함수가 table) #table() 빈도함수
summary(Improved) # 수치자료일경우 5점요약, 범주형자료일경우 빈도구함
my_table1=with(Arthritis,table(Improved))
my_table1
xtabs(~Improved,data=Arthritis) #xtabs(~변수명, data=데이타프레임명)
##이 위에것들 다 빈도구하는 함수


prop.table(my_table1) #비율(%)출력, prop.table(빈도)
prop.table(table(Improved)) #이렇게 안에 직접 쳐도됨
prop.table(summary(Improved)) #어찌하든 됨


options("digits") #소수점 자리수 확인 및 조정
options("digits"=2) # 소수점 둘째자리까지 표현
prop.table(my_table1)

______변수 1개가지고 하는 빈도, % 등등



##범주형 변수가 2개인 빈도분석## (회귀분석 실험계획법 등등 들어야댕)
table(Treatment, Improved)  #교차표 (treatment ; 처리(실험할때 처리군 대조군 할때 그 처리)

my_table2=with(Arthritis, table(Treatment,Improved))

my_table2

my_table3=xtabs(~Treatment+Improved, data=Arthritis)  #먼저친게 행, 뒤에친게 열 +기준

my_table3

my_table4=xtabs(~Improved+Treatment, data=Arthritis)

my_table4
#xtabs(~행변수+열변수,..)

str(my_table3)

margin.table(my_table3,1) # 주변분포 
#margin.table(, 1= 행 or 2=열 합)
margin.table(my_table3,2)

margin.table(my_table3) #전체의 합


prop.table(margin.table(my_table3,1)) #주변분포 %출력
prop.table(margin.table(my_table3,2))
prop.table(my_table3,1) # 행, 열 %출력 #1으로 돌리면 행%
prop.table(my_table3,2) #2로 돌리면 열%
#아래 두개 중요


addmargins(my_table3) #교차표+주변분포 ##이함수알아둬야
addmargins(xtabs(~Treatment+Improved, data=Arthritis))  



addmargins(prop.table(my_table3)) #교차표+주변분포 %출력
addmargins(prop.table(my_table3),1)
addmargins(prop.table(my_table3),2) # 굳이 1,2로 할 필요 없음, 맨위꺼만 쓰면댐



#비율 빈도 같이 어떻게함? 아래꺼
###비율과 빈도를 같이 구하는 함수##
install.packages("gmodels") #spss output과 동일
library(gmodels)
CrossTable(Treatment, Improved)
#상대: 는 총에서 각각 값 나눠준거

관측빈도 29     43
기대빈도(22)



       42     84


>42*43/84=22
>2.616+0.004+3.752+2.744+0.004+3.935=13.055
chisq.test(my_table3, simulate.p.value=T) #simulate.p.value=F가 디폴트 #df=자유도
 >>유의수준 0.05 , pvalue<0.05 ->> 귀무가설 기각 ->> 두변수 독립X = 위에서 세번째값 다름
chisq.test(my_table3) #독립성 검정
#p-value=0.001 =>처리에 따른 효과가 있다.


#이건그냥기통참고 lm(y~x) : 회귀분석




###7.1 수치자료









	




barplot(my_table3) #2차원그림 - barplot
barplot(my_table3, legend=rownames(my_table3))




























































































































=======
#7.4 2원 빈도 표 분석-빈도표, 교차표 (범주형변수 2개)

install.packages("vcd")
library(vcd)
attach(Arthritis)
head(Arthritis)

table(Improved) # 다 빈도표 (빈도내는 젤 간단한 함수가 table) #table() 빈도함수
summary(Improved) # 수치자료일경우 5점요약, 범주형자료일경우 빈도구함
my_table1=with(Arthritis,table(Improved))
my_table1
xtabs(~Improved,data=Arthritis) #xtabs(~변수명, data=데이타프레임명)
##이 위에것들 다 빈도구하는 함수


prop.table(my_table1) #비율(%)출력, prop.table(빈도)
prop.table(table(Improved)) #이렇게 안에 직접 쳐도됨
prop.table(summary(Improved)) #어찌하든 됨


options("digits") #소수점 자리수 확인 및 조정
options("digits"=2) # 소수점 둘째자리까지 표현
prop.table(my_table1)

______변수 1개가지고 하는 빈도, % 등등



##범주형 변수가 2개인 빈도분석## (회귀분석 실험계획법 등등 들어야댕)
table(Treatment, Improved)  #교차표 (treatment ; 처리(실험할때 처리군 대조군 할때 그 처리)

my_table2=with(Arthritis, table(Treatment,Improved))

my_table2

my_table3=xtabs(~Treatment+Improved, data=Arthritis)  #먼저친게 행, 뒤에친게 열 +기준

my_table3

my_table4=xtabs(~Improved+Treatment, data=Arthritis)

my_table4
#xtabs(~행변수+열변수,..)

str(my_table3)

margin.table(my_table3,1) # 주변분포 
#margin.table(, 1= 행 or 2=열 합)
margin.table(my_table3,2)

margin.table(my_table3) #전체의 합


prop.table(margin.table(my_table3,1)) #주변분포 %출력
prop.table(margin.table(my_table3,2))
prop.table(my_table3,1) # 행, 열 %출력 #1으로 돌리면 행%
prop.table(my_table3,2) #2로 돌리면 열%
#아래 두개 중요


addmargins(my_table3) #교차표+주변분포 ##이함수알아둬야
addmargins(xtabs(~Treatment+Improved, data=Arthritis))  



addmargins(prop.table(my_table3)) #교차표+주변분포 %출력
addmargins(prop.table(my_table3),1)
addmargins(prop.table(my_table3),2) # 굳이 1,2로 할 필요 없음, 맨위꺼만 쓰면댐



#비율 빈도 같이 어떻게함? 아래꺼
###비율과 빈도를 같이 구하는 함수##
install.packages("gmodels") #spss output과 동일
library(gmodels)
CrossTable(Treatment, Improved)
#상대: 는 총에서 각각 값 나눠준거

관측빈도 29     43
기대빈도(22)



       42     84


>42*43/84=22
>2.616+0.004+3.752+2.744+0.004+3.935=13.055
chisq.test(my_table3, simulate.p.value=T) #simulate.p.value=F가 디폴트 #df=자유도
 >>유의수준 0.05 , pvalue<0.05 ->> 귀무가설 기각 ->> 두변수 독립X = 위에서 세번째값 다름
chisq.test(my_table3) #독립성 검정
#p-value=0.001 =>처리에 따른 효과가 있다.


#이건그냥기통참고 lm(y~x) : 회귀분석




###7.1 수치자료









	




barplot(my_table3) #2차원그림 - barplot
barplot(my_table3, legend=rownames(my_table3))




























































































































>>>>>>> 16b01887c2eaf2208c618056753b32ac8f5c7c96
