## I have already filtered the necesary data for two days
## the filterd file is: "household_power_consumption.csv", you can find it in
## this repository

par(bg="white")
Sys.setenv(LANG = 'en')
Sys.setlocale("LC_TIME", "English") ## myt laptop is in spanish, so I need to set locale
par(mfrow = c(2,2))

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
pc <- within(pc, { timestamp=paste(format(as.Date(Date,format("%d/%m/%Y")),"%Y-%m-%d"),"T",Time, sep="") })
plot(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Global_active_power, ylab="Global active power (kilowatts)", type="l", xlab="")

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
pc <- within(pc, { timestamp=paste(format(as.Date(Date,format("%d/%m/%Y")),"%Y-%m-%d"),"T",Time, sep="") })
plot(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Voltage, ylab="Voltage", type="l", xlab="datetime")

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
pc <- within(pc, { timestamp=paste(format(as.Date(Date,format("%d/%m/%Y")),"%Y-%m-%d"),"T",Time, sep="") })
plot(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Sub_metering_1, ylab="Energy sub metering", type="l", col='black', xlab="")
lines(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Sub_metering_2, col='red')
lines(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Sub_metering_3, col='blue')
legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
pc <- within(pc, { timestamp=paste(format(as.Date(Date,format("%d/%m/%Y")),"%Y-%m-%d"),"T",Time, sep="") })
plot(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Global_reactive_power, ylab="$Global reactive power", type="l", xlab="datetime")

dev.copy(png, file="plot4.png")
dev.off()
