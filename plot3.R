# Coursera : Exploratory Data Analysis
# Course Project 1
# Plot 3

# read in the  Electric power consumption dataset which is downloaded into working directory
# use as.is to preserve columns as characters
consumption <-read.table("household_power_consumption.txt", header = TRUE, sep =";", na.strings = "?" , as.is =TRUE)
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y" )                  # convert Date from character to date
sub_consumption <- subset(consumption, Date == as.Date("2007/02/01"))
sub_consumption2 <- subset(consumption, Date == as.Date("2007/02/02"))
combined <- rbind(sub_consumption, sub_consumption2)
combined$Time <- chron(times= combined$Time)                                # convert Time from character to times
combined$DT <- as.POSIXct(paste(combined$Date,combined$Time), format="%Y-%m-%d %H:%M:%S") # combine Date and Time 
## plot 3 for screen display
with( combined, plot(DT, Sub_metering_1,type="l",xlab = "", ylab="Energy sub metering" ))
with(combined, lines( DT, Sub_metering_2, col="red"))
with(combined, lines( DT, Sub_metering_3, col="blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red",'blue'))
## plot 3 write to png file
png(file="plot3.png")
with( combined, plot(DT, Sub_metering_1,type="l",xlab = "", ylab="Energy sub metering" ))
with(combined, lines( DT, Sub_metering_2, col="red"))
with(combined, lines( DT, Sub_metering_3, col="blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red",'blue'))

dev.off()
