#' Data Summary
#' 
#' @description The results include sumple number (N), mean, varicance (Var), standard deviation (sd), standard error (se, =sd/sqrt(n)), coefficient of variation (CV, %),
#'  median,  the first quartile (Q1), the third quartile (Q3), corrected sum or squares (CSS), uncorrected sum or squares (USS), range, interquartile range (IQR), Skewness, and Kurtosis.
#' @import stats
#' @export
#' @examples 
#' library(research1p1)
#' x<-rnorm(n = 15, mean = 100, sd = 10) 
#' data_summary(x)

data_summary <- function(x, digits = 3){
options(digits = digits)
n <- length(x)
m <- mean(x)
v <- var(x)
s <- sd(x)
me <- median(x)
q3 <- quantile(x,probs = 0.75)
q1 <- quantile(x,probs = 0.25)
cv <- 100*s/m
css <- sum((x-m)^2)
uss <- sum(x^2)
R <- max(x)-min(x)
R1 <- quantile(x,3/4)-quantile(x,1/4)
sm <- s/sqrt(n)
g1 <- n/((n-1)*(n-2))*sum((x-m)^3)/s^3
g2 <- ((n*(n+1))/((n-1)*(n-2)*(n-3))*sum((x-m)^4)/s^4 - (3*(n-1)^2)/((n-2)*(n-3)))

data.frame(N=n, Mean=m, Var=v, sd=s, se=sm, CV=cv, 
Median=me, Q3=q3, Q1=q1, IQR=R1, CSS=css, USS=uss,
Range=R, Skewness=g1, Kurtosis=g2, row.names="[1]")
}