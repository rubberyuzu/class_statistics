
height <- matrix(c(29.7, 31.8, 34.1, 31.6, 29.0, 29.6, 30.4,
						27.4, 29.2, 32.5, 30.9, 28.5, 26.4, 28.0,
						28.2, 30.1, 33.0, 30.9, 28.3, 29.1, 28.4,
						22.8, 25.6, 24.5, 23.4, 22.7, 22.1, 22.9),
					nrow = 7, ncol =4)

soil <- c(rep(1,14), rep(2,14))
sehi <- c(rep(1,7), rep(2,7), rep(1,7), rep(2,7))

newdata <- data.frame(sehi = as.factor(sehi),
											soil = as.factor(soil),
											scores = as.vector(height))
summary(aov(scores~sehi+soil+sehi*soil, data=newdata))

soil.nat <- c(mean(newdata$scores[1:7]), mean(newdata$scores[8:14]))
soil.art <- c(mean(newdata$scores[15:21]), mean(newdata$scores[22:28]))

plot(soil.nat, xaxt="n", ylim=c(20,35), type="b", xlab="Sehi", ylab="mean value", pch =1)
par(new=T)
plot(soil.art, xaxt="n", ylim=c(20,35), type="b", xlab="", ylab="", pch =2)
axis(side=1, at=1:2)