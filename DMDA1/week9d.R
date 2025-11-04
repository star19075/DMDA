input <- warpbreaks
print(head(input))
plot(input)

output <- glm(formula = breaks ~ wool + tension, data = warpbreaks,
              family = poisson)
print(summary(output))
plot(output)