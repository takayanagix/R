x <- read.csv("練習.csv",header=TRUE,fileEncoding="UTF-8")

library(prettyR)
fr <- freq(x$b1)
print(fr,cum.pc=TRUE,show.total=TRUE)

par(family="Osaka")
hist(x$年齢)

hist(x$b1)
hist(x$b2)
hist(x$b3)

par(family="Osaka",mfrow=c(3,3))
for (a in 4:8) { hist(x[,a], vreaks=seq(0.5, 5.5, 1))}