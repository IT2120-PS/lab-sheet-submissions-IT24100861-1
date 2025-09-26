setwd("C:\\Users\\aaa\\OneDrive\\Desktop\\IT-24100861")
getwd()

#(01)
data1 <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data1)
attach(data1)

popmn1 <- mean(Weight.kg.)
popmn1
popvar1 <- var(Weight.kg.)
popvar1

#(02)
samples <- NULL  
n <- c()

for(i in 1:30){
  s <- sample(Nicotine, 5, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples) <- n   

s.means <- apply(samples, 2, mean)
s.means

s.var <- apply(samples, 2, var)
s.var


#(03)
samplemean1 <- mean(s.means1)
samplemean1
samplevars1 <- var(s.means1)
samplevars1

popmn1
samplemean1

truevar = popvar1/6
truevar
samplevars1
