x <- read.csv("sam2.csv",header=TRUE,fileEncoding="UTF-8")
x
// psych 
summary(x)

// prettyR
hist(x$学年)
for (a in 4:8) { hist(x[,a], vreaks=seq(0.5, 5.5, 1))}

// 相関係数
cor(x)
cor(x$b10, x$b12)
cor(x[5:7])

// 欠陥値を含むサンプルをすべて除く
cor(x[5:7], use="complete.obs") 
// 2変数の組合せごとに欠陥値を含むサンプルを除く
cor(x[5:7], use="pairwise.complete.obs") 

t.xb <-c("b1","b2","b3","b4","b5","b6","b7","b8","b9","b10","b11", "b12","b13","b14","b15","b16","b17","b18","b19","b20")
xb <-x[t.xb]

cor(xb, use="complete.obs")
round(cor(xb, use="complete.obs"),3)

// 因子分析1
library(psych)
VSS.scree(x)