library(WaveletComp)
pedata <- read.csv("C:/Users/engan/GitHub/Pedestrian_Counting_System___2009_to_Present__counts_per_hour_.csv",
                   header = TRUE, sep = ",")

pedata$Date_Time = strptime(pedata$Date_Time, format = "%d/%m/%Y %I:%M:%S %p" )
head(pedata)

# Missind data
sum(is.na(pedata))

sample <-  pedata[pedata$Sensor_ID == 1,]
plot(sample$Date_Time, sample$Hourly_Counts)
