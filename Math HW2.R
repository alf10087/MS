library(ggplot2)
rm(list = ls())
set.seed(3.141592)
##### Problem A1

#### Set parameters

n <- 10
df <- 5

rep <- function(i) {
  var(rchisq(n, df))
  }

##### Run replications

blah666 <- data.frame(sapply(1:666, rep))

hist()

##### Plot 

mean <-  mean(blah666[,1])
meana <- round(mean, digits=3)
texta <- paste ("mean =",meana)

b <- ggplot(data=blah666, aes(blah666[,1])) +
  geom_histogram(aes(y =..density..),
                 fill="red",
                 alpha = .5)

b <- b + geom_density(col=1) +
  labs(title="n = 10") +
  labs(x=NULL, y=NULL) +
  geom_vline(aes(xintercept=mean(blah666[,1])),
             color="dark green", linetype="dashed", size=0.5) +
  xlim(0, 42) +
  annotate("text", x = 15, y = 0.09, label = texta, size = 3)

b <- b + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) 

b

###################

c <- runif(1000, 1)
a <- rcauchy(1000, 1, 3)
plot(a, c)
library(ggplot2)
rm(list = ls())
set.seed(3.141592)
##### Problem A1

#### Set parameters

n <- 10
df <- 5

rep <- function(i) {
  var(rchisq(n, df))
  }

##### Run replications

blah666 <- data.frame(sapply(1:666, rep))

hist()

##### Plot 

mean <-  mean(blah666[,1])
meana <- round(mean, digits=3)
texta <- paste ("mean =",meana)

b <- ggplot(data=blah666, aes(blah666[,1])) +
  geom_histogram(aes(y =..density..),
                 fill="red",
                 alpha = .5)

b <- b + geom_density(col=1) +
  labs(title="n = 10") +
  labs(x=NULL, y=NULL) +
  geom_vline(aes(xintercept=mean(blah666[,1])),
             color="dark green", linetype="dashed", size=0.5) +
  xlim(0, 42) +
  annotate("text", x = 15, y = 0.09, label = texta, size = 3)

b <- b + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) 

b

###################

c <- runif(1000, 1)
a <- rcauchy(1000, 1, 3)
plot(a, c)
