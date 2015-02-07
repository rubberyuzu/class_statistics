sample <- c(rep(0,8), rep(1,35), rep(2,132), rep(3,78), 
            rep(4,32), rep(5,11), rep(6,4), rep(7,0))
r <- hist(sample, br=seq(-0.5, 7.5, 1), main="Histogram of egg distribution",
xlab="eggs per bean", col="gray")

x <- c(0:7)
pois <- length(sample) * dpois(x, mean(sample))
lines(r$mids, pois)
result.table <- rbind(r$counts, pois)
rownames(result.table) <- c("observed", "expected")
colnames(result.table) <- r$mids

result.table

result.table[,7] <- result.table[,7] + result.table[,8]
table2 <- result.table[,1:7] #-- table after lamping
table2

chi2value <- sum((table2[1,] - table2[2,])^2 / table2[2,])

DF <- dim(table2)[2]-2
chi.crit <- qchisq(0.05, DF, lower.tail=F)

pchisq(chi2value, DF, lower.tail = F)
chi2value