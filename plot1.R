#Exploratory Data Analysis - Coursera
#First assignment - Plot 1
#Camilo Ordóñez

#Read the data

setwd("C:/Users/Camilo/Documents/GitHub/ExData_Plotting1")

data_energy <- read.delim("household_power_consumption.txt", sep = ";", na.strings = "?")

energy <- data_energy [c(66637:69516), 1:9]


#Making the plot 1

png(file = "plot1.png", width=480, height=480)
hist(energy$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
|