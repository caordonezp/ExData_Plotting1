#Exploratory Data Analysis - Coursera
#First assignment - Plot 4
#Camilo Ordóñez

#Read and preparing the data

setwd("C:/Users/Camilo/Documents/GitHub/ExData_Plotting1")

data_energy <- read.delim("household_power_consumption.txt", sep = ";", na.strings = "?")

data_energy$dateandtime <- strptime(paste(data_energy$Date, data_energy$Time), format="%d/%m/%Y %H:%M:%S")

two_days <- data_energy [c(66637:69516), 1:10]


# Making the plot

par(mfrow=c(2,2))

plot (two_days$dateandtime, two_days$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab="") #Plot 1

plot(two_days$dateandtime, two_days$Voltage, type="l", ylab = "Voltage", xlab = "datetime") #Plot 2

plot (two_days$dateandtime, two_days$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="") # Plot 4
lines (x=two_days$dateandtime, y=two_days$Sub_metering_2, type = "l", col="red")
lines (x=two_days$dateandtime, y=two_days$Sub_metering_3, type = "l", col="blue")
legend ("topright", lty=1, col=c("black", "red","blue"), trace = TRUE, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex=0.6)

plot(two_days$dateandtime, two_days$Global_reactive_power, type="l", ylab = "Global_reactive_power", xlab = "datetime")#Plot 5

dev.copy (png, file = "plot4.png")
dev.off()
