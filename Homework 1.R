library("ggplot2")
library("plyr")
library("reshape2")

#### 1-A

x <- 0:4
data <- data.frame(dbinom(x, 4, .5))
data <- melt(data)

#### Generate Graph

plot(x, pbinom(x, 4, .5), main="CDFs of X with 4 coin tosses",
     bty="n", cex=1, pch=16, col="#7FC97F",
     ylab="P(x)", xlim=c(-6, 6), ylim=c(0, 1))

#### With ggplot2

cdf <- ggplot(data, aes(x=x)) + stat_ecdf(aes())
cdf

#### 51
x <- 0:4
cdf2 <- pbinom(x, 30, .16666)
cdf3 <- dbinom(x, 30, .16666)
plot(x, pbinom(x, 30, .16666), main="CDFs of Defective Microwaves Ovens grabbing 4 at random",
     bty="n", cex=2, pch=16, col="#7FC97F",
     ylab="P(x)", xlim=c(0, 4), ylim=c(0, 1))



##### Sketches

x <- 1
plot(x, pbinom(x, 4, 0.5 + (1/x)*tan(x)), main="CDF",
     bty="n", cex=1, pch=16, col="#7FC97F",
     ylab="P(x)", xlim=c(-100, 100), ylim=c(0, 1))