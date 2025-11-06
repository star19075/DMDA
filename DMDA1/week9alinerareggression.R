x <- c(1,2,3,4,5)
y <- c(1.2,1.8,2.6,3.2,3.8)

result <- lm(y ~ x)
print(summary(result))


png(file = "linear_regression.png")


plot(x,y, col = "red", main = "Weekly Sales Report",
     abline(lm(y~x)), cex = 1.3, pch = 16,
     xlab = "Week", ylab = "Sales")

dev.off() 
