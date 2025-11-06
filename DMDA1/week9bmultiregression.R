
input <- mtcars[, c("mpg", "wt", "disp", "hp")]


result <- lm(mpg ~ wt + disp + hp, data = input)


print(summary(result))

png(file = "multiLinearRegressionGraph.png")
plot(result)
dev.off()
