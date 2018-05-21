# R11

[![HitCount](http://hits.dwyl.io/PhDMeiwp/R11.svg)](http://hits.dwyl.io/PhDMeiwp/R11)

## Installing "R11" package in R


    install.packages("devtools")
	devtools::install_github("PhDMeiwp/R11@master", force = TRUE)
	library(R11)


## @Examples
	
    x<-c(1,3,4,6,8,11,13,15,40,50,100) 
    data_summary(x, digits = 3)
	
then output as follows:

	# data_summary(x)
	     N Mean Var sd   se  CV  Median  mad  Q1   Q3   IQR   Min  Max   Range  CSS    USS
	[1] 11 22.8 901 30 9.05 132    11   10.4  5   27.5  22.5   1   100     99   9014  14741

    
## @description
The results include sample number (N), mean, varicance (Var), 
standard deviation (sd), standard error [se, =sd/sqrt(n)], coefficient of variation (CV, %),
median, **median absolute deviation (mad)**, the first quartile (Q1), the third quartile (Q3), interquartile range (IQR), minimum, maximum, range
corrected sum of squares (CSS), uncorrected sum of squares (USS).

## @note 
Find more useful functions in 'DescTools' pacakge, 
such as Gini Coefficient, Geometric Mean and Standard Deviation, G-Test for Count Data, **Skewness and Kurtosis, Confidence Interval for the Mean, Confidence Interval for the Median**.

