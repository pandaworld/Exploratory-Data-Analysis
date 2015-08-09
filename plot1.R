# Coursera : Exploratory Data Analysis
# Course Project 1
# Plot 1


# read in the  Electric power consumption dataset which is downloaded into working directory
# use as.is to preserve columns as characters
library(chron)
consumption <-read.table("household_power_consumption.txt", header = TRUE, sep =";", na.strings = "?" , as.is =TRUE)
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y" )                  # convert Date from character to date
sub_consumption <- subset(consumption, Date == as.Date("2007/02/01"))
sub_consumption2 <- subset(consumption, Date == as.Date("2007/02/02"))
combined <- rbind(sub_consumption, sub_consumption2)
combined$Time <- chron(times= combined$Time)                                # convert Time from character to times
combined$DT <- as.POSIXct(paste(combined$Date,combined$Time), format="%Y-%m-%d %H:%M:%S") # combine Date and Time 
## plot 1 write to screen
with( combined, hist(Global_active_power, col="red", xlab = "Global Active Power (kilowatts)"))
## plot 1 write to file png
png(file="plot1.png")
with( combined, hist(Global_active_power, col="red", xlab = "Global Active Power (kilowatts)"))

dev.off()
