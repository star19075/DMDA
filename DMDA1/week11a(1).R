
x <- seq(-10, 10, by = 0.1) 

y <- dnorm(x, mean = 2.5, sd = 0.5) 
png(file="dnom.png")

plot(x, y)
dev.off()