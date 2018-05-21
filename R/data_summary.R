#' Data Summary
#' 
#' @description The results include sumple number (N), mean, varicance (Var), standard deviation (sd), standard error (se, =sd/sqrt(n)), coefficient of variation (CV, %),
#'  median, median absolute deviation (mad), the first quartile (Q1), the third quartile (Q3), minimum, maximum, corrected sum or squares (CSS), uncorrected sum or squares (USS), range, interquartile range (IQR).
#' @import stats
#' @export
#' @examples 
#' library(R11)
#' x<-c(1,3,4,6,8,11,13,15,40,50,100) 
#' data_summary(x)
#' @seealso \code{\link[stats]{IQR}}, \code{\link[stats]{mad}}, \code{\link[DescTools]{MeanCI}}, \code{\link[DescTools]{MedianCI}}, \code{\link[DescTools]{Skew}}, \code{\link[DescTools]{Kurt}}
#' @note Find more useful functions in 'DescTools' pacakge, such as Gini Coefficient, Geometric Mean and Standard Deviation, G-Test for Count Data, Skewness and Kurtosis, Confidence Interval for the Mean, Confidence Interval for the Median.

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

data.frame(N=n, Mean=m, Var=v, sd=s, se=sm, CV=cv, Median=me, mad=mad, Q1=q1, Q3=q3, IQR=IQR, Min = min, Max = max,Range=R, 
 CSS=css, USS=uss, row.names="[1]")
}