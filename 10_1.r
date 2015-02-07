mydata <- read.csv("/Users/rubberyuzu/Documents/class_statistics/insects_for_stats.csv",
										header = T)
mydata

attach(mydata)

mod1<-glm(cbind(y, N-y) ~ dose + sex + dose*sex, family = binomial(logit),
					data=mydata)
summary(mod1)

# x11()
plot(dose, y, xlab="dose", ylab="mortality(%)", pch=c(21,19)[sex])

pred.x<-seq(0.1, 0.8, 0.01)
pred.ym<- 1/(1+exp(-(mod1$coefficient[1] +
						 mod1$coefficient[2]*pred.x +
						 mod1$coefficient[3]*1 +
						 mod1$coefficient[4]*pred.x*1)))
pred.yf<- 1/(1+exp(-(mod1$coefficient[1]+
						 mod1$coefficient[2]*pred.x +
						 mod1$coefficient[3]*2 +
						 mod1$coefficient[4]*pred.x*2)))

lines(pred.x, pred.ym*100, lwd=2, col="blue")
lines(pred.x, pred.yf*100, lwd=2, col="red")
legend("topleft", legend=c("M","F"), pch=c(21,19))

# 交互作用があるほうが良い分析だ、ということが分かる。
# ロジスティック回帰

# predxと2,みたいなのを消すと交互作用がきえる
# 66.025、っていうのと比較
# 交互作用いれたほうがひくい、そのほうが良いモデル

# 要素を分離してあげる
