
library(MASS) 

print(str(Cars93)) 
 
car_data <- table(Cars93$AirBags, Cars93$Type) 
print(car_data) 
smoothScatter(car_data)

chi_result <- chisq.test(car_data) 
print(chi_result)
