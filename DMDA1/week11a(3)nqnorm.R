
x <- seq(0,1, by = 0.02) 

y <- qnorm(x, mean = 2, sd = 1) 
png(file="qnom.png")

plot(x, y)
dev.off()
