# Getting the data points in form of a R vector. 
snowfall <- c(790,1170.8,860.1,1330.6,630.4,911.5,  
              683.5,996.6,783.2,982,881.8,1021) 

# Converting it into a time series object. 
snowfall_timeseries <- ts(snowfall, start = c(2023, 1), frequency = 8) 

# Printing the time series data. 
print(snowfall_timeseries)
png(file="snowfall.png")
plot(snowfall_timeseries)
dev.off()
