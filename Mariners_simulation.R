
sample.space <- c(0,1)
theta <- 0.525
N <- 10

wins <- sample(sample.space,
               size = N,
               replace = T,
               prob = c(theta, 1 - theta))

results <- list()

for(i in 1:10000) {
  coinTosses   <- cumsum(sample(sample.space, 10, replace = TRUE,prob = c(theta, 1 - theta))) 
  results[[i]] <- coinTosses[length(coinTosses)]
}

results <- as.data.frame(unlist(results))
results$`unlist(results)` <- as.numeric(results$`unlist(results)`)
colnames(results)[1] <- "wins"

ggplot(results, aes(x = wins)) + geom_histogram(binwidth = 1, bins = 10)

qplot(results$wins, geom = "histogram")
