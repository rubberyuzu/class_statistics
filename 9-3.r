wing <- c(10.4, 10.8, 11.1, 10.2, 10.3, 10.2, 10.7, 10.5, 10.8, 11.2, 10.6, 11.4)
tail <- c(7.4, 7.6, 7.9, 7.2, 7.4, 7.1, 7.4, 7.2, 7.8, 7.7, 7.8, 8.3)

summary(lm(wing~tail))

cor(wing, tail)

r <- cor(wing, tail)
n <- 12
t <- abs(r)*sqrt((n-2)/(1-r^2))
df <- n-2
prob <- 2*pt(t, df, lower=F)
c("t"=t, "d.f."=df, "P value"= prob)
