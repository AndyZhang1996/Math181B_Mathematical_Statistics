#import and load package
install.packages("MASS")
library(MASS)

survey = na.omit(survey)          #remove data with missing values 
smoke.freq = table(survey$Smoke)  #the frequencies of smoke 



#1)
#pass the observed to a vector 
obs = as.vector(smoke.freq)
#pass the probability to a vector  
p = c(0.045, 0.795, 0.085, 0.075)

#do chi square goodness-of-fit test
chisq.test(obs, p=p)

#p-value is 0.9575
#We fail to reject the null hypothesis and conclude that 
#the sample data in survey supports the campus smoking statistics



#2)
#chisq.test(smoke.freq) is a goodness-of-fit test that is testing if the 
#frequencies of different levels of smoking follow a uniform distribution in which 
#each level of smoking has the same probability of occuring. 



#3)
#perform the test of independence 
c_table = table(survey$Sex, survey$Exer)
chisq.test(c_table)

#p-value is 0.125
#We fail to reject the null hypothesis and conclude that 
#the exercise frequencies and sex are independent.


