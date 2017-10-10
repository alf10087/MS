library(ggplot2)


abc <- rcauchy(100, 1, 2)
plot(abc, 1:100)

########

rep <- function(i) {
  mean(rcauchy(100, 1, 2)))

}

blah <- rcauchy(100, 1, 2)
hist(blah)

##### Run replications

blah <- data.frame(sapply(1:100, rep))


b <- ggplot(data=blah, aes(blah[,1])) +
  geom_histogram(aes(y =..density..),
                 fill="red",
                 alpha = .5)

b
