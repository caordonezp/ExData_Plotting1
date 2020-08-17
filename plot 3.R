#Exploratory Data Analysis - Coursera
#First assignment - Plot 3
#Camilo Ordóñez


#Read and preparing the data

setwd("C:/Users/Camilo/Documents/GitHub/ExData_Plotting1")

data_energy <- read.delim("household_power_consumption.txt", sep = ";", na.strings = "?")

data_energy$dateandtime <- strptime(paste(data_energy$Date, data_energy$Time), format="%d/%m/%Y %H:%M:%S")

two_days <- data_energy [c(66637:69516), 1:10]


#Make the plot

png(file = "plot3.png", width=480, height=480)
plot (two_days$dateandtime, two_days$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
lines (x=two_days$dateandtime, y=two_days$Sub_metering_2, type = "l", col="red")
lines (x=two_days$dateandtime, y=two_days$Sub_metering_3, type = "l", col="blue")
legend ("topright", lty=1, col=c("black", "red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()







