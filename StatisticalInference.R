set.seed(1234)
n <- 40
lambda <- 0.2
simuls <- 1000
exp.dist <- data.frame(x = rexp(simuls * n, lambda))
exp.means <- data.frame(x = apply(matrix(exp.dist$x,simuls),1,mean))

exp.s.mean<- mean(exp.means$x)
exp.s.mean

par(mfcol= c(1,2))

hist(runif(1000))

mns = NULL
for (i  in 1:1000) mns = c(mns,mean(runif(40)))

hist(mns)
