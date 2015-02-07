lsd<-c(6,7,4,2,10,1,3,8,6)
ans<-c(6,11,6,0,13,2,1,9,9)

result1<-lm(lsd~ans)

r <-cor(lsd, ans)

n <- 9
t <- abs(r)*sqrt((n-2)/(1-r^2))
df <- n-2
prob <- 2*pt(t, df, lower=F)
c("t"=t, "d.f."=df, "P value"= prob)
