<<<<<<< HEAD
world.temp=read.table("D:/R/자료/WorldTemperature_Mean.txt", header=T)
world.temp
twoway.model=medpolish(world.temp)
twoway.model
ans=16.125+9.5-8.375-1.25
ans


consumption=read.table("D:/R/자료/household.txt", header=T)
consumption
twoway.out=medpolish(consumption)
twoway.out
attach(twoway.out)
comparison=matrix(row,ncol=1)%*%matrix(col,nrow=1)/overall
plot(residuals ~ comparison)


twoway.log.out=medpolish(log(consumption))
twoway.log.out
attach(twoway.log.out)
comparioson=matrix(row,ncol=1)%*%matrix(col,nrow=1)/overall
plot(residuals~comparison)



시계열은 나중에 보고나서

#9장 로버스트 선형회귀



















=======
world.temp=read.table("D:/R/자료/WorldTemperature_Mean.txt", header=T)
world.temp
twoway.model=medpolish(world.temp)
twoway.model
ans=16.125+9.5-8.375-1.25
ans


consumption=read.table("D:/R/자료/household.txt", header=T)
consumption
twoway.out=medpolish(consumption)
twoway.out
attach(twoway.out)
comparison=matrix(row,ncol=1)%*%matrix(col,nrow=1)/overall
plot(residuals ~ comparison)


twoway.log.out=medpolish(log(consumption))
twoway.log.out
attach(twoway.log.out)
comparioson=matrix(row,ncol=1)%*%matrix(col,nrow=1)/overall
plot(residuals~comparison)



시계열은 나중에 보고나서

#9장 로버스트 선형회귀



















>>>>>>> 16b01887c2eaf2208c618056753b32ac8f5c7c96
