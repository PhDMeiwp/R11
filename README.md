# R11

[![HitCount](http://hits.dwyl.io/PhDMeiwp/R11.svg)](http://hits.dwyl.io/PhDMeiwp/R11)

## Installing "R11" package in R

Get the development version from github:

    install.packages("devtools")
	devtools::install_github("PhDMeiwp/R11@master", force = TRUE)
	library(R11)

## Usage
	data_summary(x, digits = 3)

## Examples
	
    x<-c(1,3,4,6,8,11,13,15,40,50,100) 
    data_summary(x, digits = 3)
	
**then output as follows:**

 <img src="images/data_summary.png" align = center, width="490"/>

    
## Description
The results include sample number (N), mean, varicance (Var), 
standard deviation (sd), standard error [se, =sd/sqrt(n)], coefficient of variation (CV, %),
median, **median absolute deviation (mad)**, the first quartile (Q1), the third quartile (Q3), interquartile range (IQR), minimum, maximum, range
corrected sum of squares (CSS), uncorrected sum of squares (USS).

## Note 
The basic functions in 'data_summary()' are cited from 'stats' package of R.

Find more functions in 'DescTools' pacakge, 
such as Gini Coefficient, Geometric Mean and Standard Deviation, G-Test for Count Data, **Skewness and Kurtosis, Confidence Interval for the Mean, Confidence Interval for the Median**.

## References
	citation("stats")
