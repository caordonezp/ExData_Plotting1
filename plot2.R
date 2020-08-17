#Exploratory Data Analysis - Coursera
#First assignment - Plot 2
#Camilo Ordóñez


#Read and preparing the data

setwd("C:/Users/Camilo/Documents/GitHub/ExData_Plotting1")

data_energy <- read.delim("household_power_consumption.txt", sep = ";", na.strings = "?")


  # Using strptime to create data as a PSIXlt object representing calender dates and times

  data_energy$dateandtime <- strptime(paste(data_energy$Date, data_energy$Time), format="%d/%m/%Y %H:%M:%S")
  
  # subset the data necessary for the plot                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

  two_days <- data_energy [c(66637:69516), 1:10]
  

#Making the plot
  
  png(file = "plot2.png", width=480, height=480)
  plot (two_days$dateandtime, two_days$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab="")
  dev.off()
  