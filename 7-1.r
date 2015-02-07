mydata <- matrix(c(
	28.2, 39.6, 46.3, 41.0, 56.3,
	33.2, 40.8, 42.1, 44.1, 54.1,
	36.4, 37.9, 43.5, 46.4, 59.4,
	34.6, 37.1, 48.8, 40.2, 62.7,
	29.1, 43.6, 43.7, 38.6, 60.0,
	31.0, 42.4, 40.1, 36.3, 57.3),
	ncol=5, nrow=6, byrow=T)
newdata <- data.frame(lake=as.factor(col(mydata)), stron=as.vector(mydata))

summary(aov(stron~lake, newdata))

result<-aov(stron~lake, newdata)

TukeyHSD(result)