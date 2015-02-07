N <- 30
M <- 10000

original <- round(runif(N, min = 0.5, max = 6.5))
original.mean <- mean(original)
original.var <- var(original)

#confidence limit
two.five <- qt(0.025, N-1) * sqrt(original.var/N)
original95.upper <- original.mean + two.five
original95.lower <- original.mean - two.five

#M iterations and drawing histogram
sample.data <- matrix(0, nrow=M, ncol=N)
for(i in 1:M) sample.data[i,] <-round(runif(N, min=0.5, max=6.5))
sample.mean <- rep(0, length=M)

for(i in 1:M) sample.mean[i] <- mean(sample.data[i, ])
hist(sample.mean, nclass=50, main="Histogram of sample.mean")

# 95%C.L. upper, 95%C.L. lower
sorted.data <- sort(sample.mean)
cl95.lower <- sorted.data[0.025*M]
cl95.upper <- sorted.data[0.975*M]

# Drawing Arrows with Blue for original, with red for iterations
arrows(original95.upper, 100, original95.upper, 20, col="blue")
arrows(original95.lower, 100, original95.lower, 20, col="blue")
arrows(original.mean, 100, original.mean, 20, col="green")

arrows(cl95.upper, 100, cl95.upper, 20, col="red")
arrows(cl95.lower, 100, cl95.lower, 20, col="red")
arrows(mean(sample.mean), 100, mean(sample.mean), 20, col="brown")

