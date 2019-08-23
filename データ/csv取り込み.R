x <- read.csv("練習.csv",header=TRUE,fileEncoding="UTF-8")
x
head(x,3)
tail(x,3)
colnames(x)
ncol(x)
nrow(x)

x$年齢
x[3,3]
x[2, ]
x[ ,3]
x[3]
x[3,3:5]
x[2:4, ]
x[ ,3:5]
x[3:5]

x[c("年齢","b1","b2")]

v <- c("no","性別","年齢","b1","b2","b3","b4","b5")
v1 <- c("年齢","b1","b2")
v2 <- c("b1","b2","b3","b4","b5")
x[v]
x[v1]
x[v2]

x2 <- x[v2]
x2

min(x$年齢)
min(x[3])
max(x$b1, na.rm=TRUE)
mean(x$年齢)
sd(x$年齢)
colMeans(x[2:7],na.rm=TRUE)

sapply(x[2:8],min,na.rm=TRUE)
sapply(x[2:8],max,na.rm=TRUE)
sapply(x[2:8],mean,na.rm=TRUE)
sapply(x[2:8],sd,na.rm=TRUE)

x.m<-subset(x,性別==1)
x.f<-subset(x,性別==2)
x.m
x.f

sapply(x.m[2:8],min,na.rm=TRUE)
sapply(x.m[2:8],max,na.rm=TRUE)
sapply(x.m[2:8],mean,na.rm=TRUE)
sapply(x.m[2:8],sd,na.rm=TRUE)

by(x[3:8],x$性別,colMeans)

