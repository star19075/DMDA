
x <- seq(-10, 10, by =0.2) 

y <- pnorm(x, mean = 2.5, sd = 2) 
png(file="pnom.png")

plot(x, y)
dev.off()
