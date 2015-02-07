x<-seq(-3, 3, 0.01)

x.curve <- dnorm(x, mean=0, sd=2)
plot(x, x.curve, xlab="x", ylab="x.norm", xlim=c(-3,3), ylim=c(0, 0.4),
	   type="l", col="red")

# ----------

sd.x1<-pnorm(1, mean=0, sd=2)-pnorm(0, mean=0, sd=2)

sd.x2<-pnorm(2, mean=0, sd=2)-pnorm(0, mean=0, sd=2)

sd.x3<-pnorm(3, mean=0, sd=2)-pnorm(0, mean=0, sd=2)