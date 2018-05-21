# research1p1

[![HitCount](http://hits.dwyl.io/PhDMeiwp/basicTrendline.svg)](http://hits.dwyl.io/PhDMeiwp/research1p1)

## Installing "research1p1" package in R


    install.packages("devtools")
	devtools::install_github("PhDMeiwp/research1p1@master", force = TRUE)
	library(research1p1)


## @Examples
	
Then upload your dataset including x and y data, for example

    x<-rnorm(n = 15, mean = 100, sd = 10) 
    data_summary(x, digits = 3)
	
then output as follows:

	 # > data_summary(x,digits = 3)
         N Mean  Var   sd   se   CV Median  Q3   Q1  IQR CSS    USS Range Skewness Kurtosis
	[1] 15  101 66.6 8.16 2.11 8.08   97.3 107 95.9 11.4 933 153999  31.4    0.309 -0.182
    
## @description
The results include sumple number (N), mean, varicance (Var), 
standard deviation (sd), standard error (se, =sd/sqrt(n)), coefficient of variation (CV, %),
median,  the first quartile (Q1), the third quartile (Q3), interquartile range (IQR), 
corrected sum or squares (CSS), uncorrected sum or squares (USS), 
range, Skewness, and Kurtosis.