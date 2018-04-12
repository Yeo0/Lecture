<<<<<<< HEAD
Atlanta<-c(0,587,1212,701,1936,604,748,2139,2182,543)
Chicago<-c(587,0,920,940,1745,1188,713,1858,1737,597)
Denver<-c(1212,920,0,879,831,1726,1631,949,1021,1494)
Houston<-c(701,940,879,0,1374,968,1420,1645,1891,1220)
LA<-c(1936,1745,831,1374,0,2339,2451,347,959,2300)
Miami<-c(604,1188,1726,968,2339,0,1092,2594,2734,923)
Newyork<-c(748,713,1631,1420,2451,1092,0,2571,2408,205)
Sanfrancisco<-c(2139,1858,949,1645,347,2594,2571,0,678,2442)
Seattle<-c(2182,1737,1021,1891,959,2734,2408,678,0,2329)
WashingtonDC<-c(543,597,1494,1220,2300,923,205,2442,2329,0)


cities<-matrix(c(Atlanta,Chicago,Denver, Houston,LA, Miami, Newyork,Sanfrancisco, Seattle, WashingtonDC),10,byrow=T)
cities
Tcities=t(cities)

library(dplyr)
all_equal(cities, Tcities)
##########

colnames(cities)<-c("Atlanta","Chicago","Denver", "Houston","LA", "Miami", "Newyork","Sanfrancisco", "Seattle", "WashingtonDC")
rownames(cities)<-c("Atlanta","Chicago","Denver", "Houston","LA", "Miami", "Newyork","Sanfrancisco", "Seattle", "WashingtonDC")
cities
plot(cities,pch = 19, xlab = c("x coordinate"), ylab = c("y coordinate"),main = "Scatter plot of Cities")
text(cities, labels = abbreviate(colnames(cities)), cex = 0.8, pos = 3, col = "blue") # pos=1 : at the bottom

#(1) single linkage
hc1_cities<-hclust(dist(cities, method="euclidian")^2, method="single")
hc1_cities
rev(hc1_cities) #height : 군집간 거리 / merge: 병합순

#(2) average linkage
hc2_cities<-hclust(dist(cities, method="euclidian")^2, method="average")
hc2_cities
rev(hc2_cities)

#(3) the centroid method.  
hc3_cities<-hclust(dist(cities, method="euclidian")^2, method="centroid")
hc3_cities
rev(hc3_cities)


#2) For each method, (a) determine the number of clusters suggested by dendrogram, the CCC method and the Hotelling T-squared method. Show the assignment of cities to the clusters.

# dendrogram (1)single linkage
my_par = par(no.readonly = TRUE)
par(oma = c(0, 0, 1, 0))
par(mfrow=c(1,3))
plot(hc1_cities, hang = -1, main="Single linkage") # hang = -1 : line from the bottom


# dendrogram (2)average linkage
plot(hc2_cities, hang=-1, main="Average linkage")

# dendrogram (3)centroid linkage
plot(hc3_cities, hang=-1, main="Centroid linkage")

#CCC (1)single linkage
install.packages("NbClust")
library(NbClust)
?NbClust
NbClust(cities, distance="euclidean", min.nc=1, max.nc=10, method = "complete",index = "ccc")

#CCC (2)average linkage

#CCC (3)centroid linkage

#Hotelling (1) single linkage
install.packages("Hotelling")
library(Hotelling)
hotelling.stat(hc1_cities,hc1_cities, shrinkage=F)

#Hotelling (2) average linkage


#Hotelling (3) centroid linkage


################
a=matrix(c(0,1,11,5,1,0,2,3,11,2,0,4,5,3,4,0),4,4)
a
aa=hclust(dist(a, method="euclidian"), method="average")
plot(aa, hang=-1, main="Average linkage")
rev(aa)
bb=hclust(dist(a, method="euclidian"), method="single")
plot(bb, hang=-1, main="single linkage")
rev(bb)
cc=hclust(dist(a, method="euclidian"), method="complete")
rev(cc)
plot(cc, hang=-1, main="complete linkage")
=======
Atlanta<-c(0,587,1212,701,1936,604,748,2139,2182,543)
Chicago<-c(587,0,920,940,1745,1188,713,1858,1737,597)
Denver<-c(1212,920,0,879,831,1726,1631,949,1021,1494)
Houston<-c(701,940,879,0,1374,968,1420,1645,1891,1220)
LA<-c(1936,1745,831,1374,0,2339,2451,347,959,2300)
Miami<-c(604,1188,1726,968,2339,0,1092,2594,2734,923)
Newyork<-c(748,713,1631,1420,2451,1092,0,2571,2408,205)
Sanfrancisco<-c(2139,1858,949,1645,347,2594,2571,0,678,2442)
Seattle<-c(2182,1737,1021,1891,959,2734,2408,678,0,2329)
WashingtonDC<-c(543,597,1494,1220,2300,923,205,2442,2329,0)


cities<-matrix(c(Atlanta,Chicago,Denver, Houston,LA, Miami, Newyork,Sanfrancisco, Seattle, WashingtonDC),10,byrow=T)
cities
Tcities=t(cities)

library(dplyr)
all_equal(cities, Tcities)
##########

colnames(cities)<-c("Atlanta","Chicago","Denver", "Houston","LA", "Miami", "Newyork","Sanfrancisco", "Seattle", "WashingtonDC")
rownames(cities)<-c("Atlanta","Chicago","Denver", "Houston","LA", "Miami", "Newyork","Sanfrancisco", "Seattle", "WashingtonDC")
cities
plot(cities,pch = 19, xlab = c("x coordinate"), ylab = c("y coordinate"),main = "Scatter plot of Cities")
text(cities, labels = abbreviate(colnames(cities)), cex = 0.8, pos = 3, col = "blue") # pos=1 : at the bottom

#(1) single linkage
hc1_cities<-hclust(dist(cities, method="euclidian")^2, method="single")
hc1_cities
rev(hc1_cities) #height : 군집간 거리 / merge: 병합순

#(2) average linkage
hc2_cities<-hclust(dist(cities, method="euclidian")^2, method="average")
hc2_cities
rev(hc2_cities)

#(3) the centroid method.  
hc3_cities<-hclust(dist(cities, method="euclidian")^2, method="centroid")
hc3_cities
rev(hc3_cities)


#2) For each method, (a) determine the number of clusters suggested by dendrogram, the CCC method and the Hotelling T-squared method. Show the assignment of cities to the clusters.

# dendrogram (1)single linkage
my_par = par(no.readonly = TRUE)
par(oma = c(0, 0, 1, 0))
par(mfrow=c(1,3))
plot(hc1_cities, hang = -1, main="Single linkage") # hang = -1 : line from the bottom


# dendrogram (2)average linkage
plot(hc2_cities, hang=-1, main="Average linkage")

# dendrogram (3)centroid linkage
plot(hc3_cities, hang=-1, main="Centroid linkage")

#CCC (1)single linkage
install.packages("NbClust")
library(NbClust)
?NbClust
NbClust(cities, distance="euclidean", min.nc=1, max.nc=10, method = "complete",index = "ccc")

#CCC (2)average linkage

#CCC (3)centroid linkage

#Hotelling (1) single linkage
install.packages("Hotelling")
library(Hotelling)
hotelling.stat(hc1_cities,hc1_cities, shrinkage=F)

#Hotelling (2) average linkage


#Hotelling (3) centroid linkage


################
a=matrix(c(0,1,11,5,1,0,2,3,11,2,0,4,5,3,4,0),4,4)
a
aa=hclust(dist(a, method="euclidian"), method="average")
plot(aa, hang=-1, main="Average linkage")
rev(aa)
bb=hclust(dist(a, method="euclidian"), method="single")
plot(bb, hang=-1, main="single linkage")
rev(bb)
cc=hclust(dist(a, method="euclidian"), method="complete")
rev(cc)
plot(cc, hang=-1, main="complete linkage")
>>>>>>> 704346157696d5c879444e5bc135c15fa187d2e1
