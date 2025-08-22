setwd("C:\\Users\\it24100861\\Desktop\\IT24100861")

--(Q1)--
branch_data <- read.table("Exercise.txt",header=TRUE,sep = ",")

--(Q2)--
str(branch_data)  

--(Q3)--
boxplot(branch_data$Sales,
          main = "Boxplot of Sales",
          ylab = "Sales")

--(Q4)--
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

--(Q5)--
get.outliers <- function(X){
    q1 <- quantile(X, 0.25)
    q3 <- quantile(X, 0.75)
    iqr <- q3 - q1
    
    ub <- q3 + 1.5 * iqr
    lb <- q1 - 1.5 * iqr
    
    outliers <- X[X < lb | X > ub]
    
    print(paste("Lower bound =", lb))
    print(paste("Upper bound =", ub))
    print(paste("Outliers:", if(length(outliers) == 0) "None" else paste(sort(outliers), collapse = ", ")))
  }
  
  get.outliers(branch_data$Years)

