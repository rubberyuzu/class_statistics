age <- c(3.0, 4.0, 5.0, 6.0, 8.0, 9.0, 10.0, 11.0, 12.0, 14.0, 15.0, 16.0, 17.0)
wing <- c(1.4, 1.5, 2.2, 2.4, 3.1, 3.2, 3.2, 3.9, 4.1, 4.7, 4.5, 5.2, 5.0)

result1<-lm(wing~age)
summary(result1)

mydata <- data.frame(wing=as.vector(wing), age=as.vector(age))
summary(aov(wing~age, mydata))

result1.plot<-predict(result1, interval="confidence")
matplot(age, result1.plot, xlab="age(days)", ylab="wing length(mm)", type="l")
