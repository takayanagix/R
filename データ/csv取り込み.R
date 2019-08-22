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