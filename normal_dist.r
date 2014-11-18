# dnorm ... Given a set of values it returns the height of the probability distribution at each point.
# pnorm ... Given a number or a list it computes the probability that a normally distributed random number will be less than that number.
# dt ... returns a value of probability density function of t distribution. df = degrees of freedom.

x<-seq(-3, 3, 0.01)

x.norm<-dnorm(x, mean=0, sd=1)
x.tdistr<-dt(x, df=4)

plot(x, x.norm, xlab="x", ylab="probability",
		 xlim=c(-3,3), ylim=c(0, 0.4), type="l", col="blue")
par(new=T)

plot(x, x.tdistr, xlab="x", ylab="probability",
		 xlim=c(-3,3), ylim=c(0, 0.4), type="l", col="red")
par(new=T)
