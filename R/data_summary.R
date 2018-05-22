#' Data Summary
#' 
#' @description The results include sumple number (N), mean, varicance (Var), standard deviation (sd), standard error (se, = sd/sqrt(n)), coefficient of variation (CV, %),
#'  median, median absolute deviation (mad), the first quartile (Q1), the third quartile (Q3), interquartile range (IQR, = Q3-Q1), minimum, maximum, range (Max-Min), corrected sum or squares (CSS), uncorrected sum or squares (USS).
#' @import stats
#' @export
#' @examples 
#' library(R11)
#' x<-c(1,3,4,6,8,11,13,15,40,50,100) 
#' #' data_summary(x)
#' 
#' # Not run
#' shapiro.test(x)  
#' # if p-value>0.05 (i.e. normal distribution), use Mean +/- sd; 
#' # else, use Meadian [Q1-Q3] or Median [IQR].
#' 
#' # Alternatively, mean (95% CI for the mean) and median (95%CI for the median) are also used in some scientific papers.
#' # In general, 95%CI is not recommended, unless required by the target journal.
#' library(DescTools)
#' DescTools::MeanCI(x)
#' DescTools::MedianCI(x)
#' 
#' @seealso \code{\link[stats]{IQR}}, \code{\link[stats]{mad}}, \code{\link[DescTools]{MeanCI}}, \code{\link[DescTools]{MedianCI}}, \code{\link[DescTools]{Skew}}, \code{\link[DescTools]{Kurt}}
#' @note The basic functions in 'data_summary()' are cited from 'stats' package of R. \n Find more functions in 'DescTools' pacakge, such as Gini Coefficient, Geometric Mean and Standard Deviation, G-Test for Count Data, Skewness and Kurtosis, Confidence Interval for the Mean, Confidence Interval for the Median.
#' @references citation("stats")

data_summary <- function(x, digits = 3){
options(digits = digits)
n <- length(x)
m <- mean(x)
v <- var(x)
s <- sd(x)
me <- median(x)
q3 <- quantile(x,probs = 0.75)
q1 <- quantile(x,probs = 0.25)
min <- min(x)
max <- max(x)
cv <- 100*s/m
css <- sum((x-m)^2)
uss <- sum(x^2)
R <- max(x)-min(x)
IQR <- IQR(x)
mad <- mad(x)
sm <- s/sqrt(n)

shapiro.test(x)->test
print(test)
if (test$p.value>=0.05){
  message("\nThe data is Normal distribution (p-value >= 0.05). \nHence, it is recommended to use Mean +/- sd.\n\n")
}
else{message("\nThe data is non-Normal distribution (p-value < 0.05). \nHence, it is recommended to use Median (Q1-Q3).\n\n")
}

result1<-data.frame(N=n, Mean=m, Var=v, sd=s, se=sm, CV=cv, CSS=css, USS=uss, row.names="[1]")
result2<-data.frame(Median=me, mad=mad, Q1=q1, Q3=q3, IQR=IQR, Min = min, Max = max,Range=R, 
                   row.names="[2]")
print(result1)
cat("\n")
print(result2)
invisible(list(N=n, Mean=m, sd=s, se=sm, Median=me, Q1=q1, Q3=q3, IQR=IQR, Min = min, Max = max,Range=R, mad=mad, Var=v, CV=cv, CSS=css, USS=uss))
}