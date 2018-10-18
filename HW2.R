data <- c(24, 26)
p <- c(8/27, 19/27)
chisq.test(data, p = p)


data <- c(59, 27, 10)
p <- c(0.60653, 0.30327, 1-0.60653-0.30327)
chisq.test(data, p = p)

data <- c(4, 13, 10, 7+5+4+3+3+1)
p <- c(0.35, 0.2275, 0.1479, 0.2746)
chisq.test(data, p = p)