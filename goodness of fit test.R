data <- c(315,108,101,32)     #observed data
p <- c(9/16,3/16,3/16,1/16)   #expected probability

chisq.test(data,p = p)