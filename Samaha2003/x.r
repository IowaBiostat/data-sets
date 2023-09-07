rg <- function(n, m, s, r=c(20, 800)) {
  v <- s^2
  rate <- m/v
  shape <- rate*m
  xx <- rgamma(100, shape=shape, rate=rate)
  x <- sample(xx[xx > r[1] & xx < r[2]], n)
  a <- s/sd(x)
  b <- m - a*mean(x)
  a*x+b
}
rln <- function(n, m, s, r=c(20, 800)) {
  v <- s^2
  mu <- log(m^2/sqrt(m^2+v))
  sg <- sqrt(log(1+v/m^2))
  xx <- exp(rnorm(100, mu, sg))
  x <- sample(xx[xx > r[1] & xx < r[2]], n)
  a <- s/sd(x)
  b <- m - a*mean(x)
  a*x+b
}
gen <- function(seed, dist=c('l', 'g'), sd=c(4,5)) {
  set.seed(seed)
  dist <- match.arg(dist)
  if (dist == 'l') {
    b1 <- rln(36, 176, 120)
    b2 <- rln(43, 188, 176)
    a1 <- rln(36, 169, 110)
    a2 <- rln(43, 150, 171)
  } else {
    b1 <- rg(36, 176, 120)
    b2 <- rg(43, 188, 176)
    a1 <- rg(36, 169, 110)
    a2 <- rg(43, 150, 171)
  }
  b1 <- sort(b1)
  b2 <- sort(b2)
  a1 <- sort(a1)
  a2 <- sort(a2)
  a1 <- a1[order(1:36 + rnorm(36, sd=sd[1]))]
  a2 <- a2[order(1:43 + rnorm(43, sd=sd[2]))]
  data.table(Group = rep(c("LowFat", "LowCarb"), c(36, 43)),
             Baseline = round(c(b1, b2)), Completion = round(c(a1, a2)))
}
Badness <- numeric(10000)
pb <- txtProgressBar(0, 10000, style=3)
for (i in 1:10000) {
  Data <- gen(i, dist='l')
  Data[, mean(Completion - Baseline), Group]
  s <- Data[, sd(Completion - Baseline), Group]$V1
  Badness[i] <- any(Data$Baseline < 10)*10000 + any(Data$Completion < 10)*10000 + (s[1] - 54)^2 + (s[2] - 80)^2
}
seed <- which.min(Badness); min(Badness) # 3786
seed <- 1641
Data <- gen(seed, dist='l')[sample(1:.N)][order(Group)]
fwrite(Data, file='../dat/Samaha2003.txt', sep='\t')
