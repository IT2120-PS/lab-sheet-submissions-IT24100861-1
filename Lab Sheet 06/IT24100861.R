setwd("C:\\Users\\aaa\\OneDrive\\Desktop\\IT24100861 (1)")
# (Q1)

# i. 
#Answer:X ~ Binomial(n = 50, p = 0.85)--(Distribution)

#ii.
p_at_least_47 <- sum(dbinom(47:50, size=50, prob=0.85))#Probability that at least 47 students passed
p_at_least_47

# (Q2)
# i. Random variable: X = number of calls per hour

# ii. Distribution: X ~ Poisson(lambda = 12)

# iii.
p_exact_15 <- dpois(15, lambda=12)
p_exact_15
