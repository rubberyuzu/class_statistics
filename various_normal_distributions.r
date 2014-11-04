x <- seq(-3, 73.5, 0.01)

x.ncurve1 <- dnorm(x, mean=20, sd=4)
x.ncurve1 <- dnorm(x, mean=0, sd=1)
x.ncurve1 <- dnorm(x, mean=40, sd=2)
x.ncurve1 <- dnorm(x, mean=60, sd=4.5)

plot(x, x.ncurve1, xlab="x", ylab="x.norm", xlim=c(-3, 73.5),
	ylim=c(0, 0.45), type="1", col="blue")
par(new=T)
plot(x, x.ncurve1, xlab="x", ylab="x.norm", xlim=c(-3, 73.5),
	ylim=c(0, 0.45), type="1", col="blue")