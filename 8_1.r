calcium <- matrix(c(16.5, 18.4, 12.7, 14.0, 12.8,
										14.5, 11.0, 10.8, 14.3, 10.0,
										39.1, 26.2, 21.3, 35.8, 40.2,
										32.0, 23.8, 28.8, 25.0, 29.3),
									nrow = 5, ncol =4)
hormone <- c(rep(1, 10), rep(2,10))
sex <- c(rep(1,5), rep(2,5),rep(1,5), rep(2,5))

newdata <- data.frame(hrm = as.factor(hormone),
											sx = as.factor(sex), scores = as.vector(calcium))

summary(aov(scores~sx+hrm+sx*hrm, data=newdata))

calcium.hrm <- c(mean(newdata$scores[1:5]), mean(newdata$scores[6:10]))
calcium.nonhrm  <- c(mean(newdata$scores[11:15]), mean(newdata$scores[16:20]))

plot(calcium.hrm, xaxt="n", ylim=c(9,40), type="b", xlab="sex", ylab="mean value", pch =1)
par(new=T)
plot(calcium.nonhrm, xaxt="n", ylim=c(9,40), type="b", xlab="", ylab="", pch =2)
axis(side=1, at=1:2)