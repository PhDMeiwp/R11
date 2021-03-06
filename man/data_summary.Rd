% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_summary.R
\name{data_summary}
\alias{data_summary}
\title{Data Summary}
\usage{
data_summary(x, digits = 3)
}
\description{
The results include sumple number (N), mean, varicance (Var), standard deviation (sd), standard error (se, = sd/sqrt(n)), coefficient of variation (CV, %),
 median, median absolute deviation (mad), the first quartile (Q1), the third quartile (Q3), interquartile range (IQR, = Q3-Q1), minimum, maximum, range (Max-Min), corrected sum or squares (CSS), uncorrected sum or squares (USS).
}
\note{
The basic functions in 'data_summary()' are cited from 'stats' package of R. \n Find more functions in 'DescTools' pacakge, such as Gini Coefficient, Geometric Mean and Standard Deviation, G-Test for Count Data, Skewness and Kurtosis, Confidence Interval for the Mean, Confidence Interval for the Median.
}
\examples{
library(R11)
x<-c(1,3,4,6,8,11,13,15,40,50,100) 
data_summary(x)

# Not run------------------
shapiro.test(x)  
# if p-value>0.05 (i.e. normal distribution), use Mean +/- sd; 
# else, use Meadian [Q1-Q3] or Median [IQR].

# Alternatively, mean (95\% CI for the mean) and median (95\%CI for the median) are also used in some scientific papers.
# In general, 95\%CI is not recommended, unless required by the target journal.
library(DescTools)
DescTools::MeanCI(x)
DescTools::MedianCI(x)
# End (Not run)------------

}
\references{
citation("stats")
}
\seealso{
\code{\link[stats]{IQR}}, \code{\link[stats]{mad}}, \code{\link[DescTools]{MeanCI}}, \code{\link[DescTools]{MedianCI}}, \code{\link[DescTools]{Skew}}, \code{\link[DescTools]{Kurt}}
}
