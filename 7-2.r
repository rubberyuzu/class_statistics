mydata <- matrix(c(
	100, 20, 50,
	80, 40, 90,
	99, 59, 49,
	88, 44, 55,
	83, 54, 68,
	79, 54, 94,
	90, 23, 65,
	81, 68, 79,
	60, 29, 56,
	78, 34, 44
	),
	ncol=3, nrow=10, byrow=T)
newdata <- data.frame(country=as.factor(col(mydata)), scores=as.vector(mydata))

summary(aov(scores~country, newdata))

result<-aov(scores~country, newdata)

TukeyHSD(result)