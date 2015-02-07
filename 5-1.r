treatA <- c(5.5, 4.2, 3.7, 5.1, 4.4, 4.3, 5.5, 4.2, 3.7, 5.1, 4.4, 4.3)
treatB <- c(3.9, 4.1, 3.8, 3.2, 4.5, 3.8, 3.9, 4.1, 3.8, 3.2, 4.5, 3.8)

t.test(treatA, treatB, var=T)

#---
real.diff.mean <- mean(treatA) - mean(treatB)

n = 5000
pool.data <- c(treatA, treatB)
diff.mean <- numeric(n)

for (j in 1:n) {
	pool.new <- sample(pool.data)
	treatA.new <- pool.new[1:length(treatA)]
	treatB.new <- pool.new[(length(treatA)+1):length(pool.data)]
	diff.mean[j] <- mean(treatA.new)-mean(treatB.new)
}

hist(diff.mean, breaks=20)

real.diff.mean
p.value<-length(diff.mean[real.diff.mean <= diff.mean])/n
cat("P value is", p.value)