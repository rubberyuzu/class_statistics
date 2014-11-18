x<-seq(61,181,0.1)

x.curve <- dnorm(x, mean=121, sd=20)
plot(x, x.curve, xlab="x", ylab="x.norm", xlim=c(61,181),
		 ylim=c(0,0.025), type="l", col="black")
par(new=T)

y1<-pnorm(115,mean=121,sd=20) - pnorm(110, mean=121, sd=20)

y2<-pnorm(121, mean=121, sd=20) - pnorm(110, mean=121, sd=20)
y3<-pnorm(121, mean=121, sd=20) - pnorm(115, mean=121, sd=20)
y4<- y2-y3

