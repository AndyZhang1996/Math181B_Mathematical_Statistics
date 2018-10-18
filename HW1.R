#chi-squared distribution 
x <- seq(from=0, to=10, by=0.01)
plot(x, dchisq(x,1), type='l', main="chi square distribution", xlab="x", 
     ylab = "y", ylim=c(0,1))
lines(x, dchisq(x,2), type="l", col="green")
lines(x, dchisq(x,3), type="l", col="red")
lines(x, dchisq(x,4), type="l", col="yellow")
lines(x, dchisq(x,6), type="l", col="blue")
lines(x, dchisq(x,9), type="l", col="pink")

color <- c("black","green","red","yellow","blue","pink")
df <- c("n=1","n=2","n=3","n=4","n=6","n=9")

legend("topright", legend=df, col=color, lty=1, cex=0.5)


#t distribution
x <- seq(from=-10, to=10, by=0.01)
plot(x, dt(x,3), type='l', main="t distribution", xlab="x", 
     ylab = "y", ylim=c(0,1))

lines(x, dt(x,5), type="l", col="green")
lines(x, dt(x,10), type="l", col="red")
lines(x, dt(x,30), type="l", col="yellow")
lines(x, dnorm(x), type="l", col="blue")


color <- c("black","green","red","yellow","blue")
df <- c("n=3","n=5","n=10","n=30","normal")

legend("topright", legend=df, col=color, lty=1, cex=0.5)
