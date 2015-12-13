## I have already filtered the necesary data for two days
## the filterd file is: "household_power_consumption.csv", you can find it in
## this repository

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
par(mfrow = c(2,2))

plot(pc$Global_active_power, ylab="Global active power (kilowatts)", type="l")

plot(pc$Voltage, ylab="Voltage", type="l")

plot(pc$Sub_metering_1, ylab="Energy sub metering", type="l", col='red')
lines(pc$Sub_metering_2, col='green')
lines(pc$Sub_metering_3, col='blue')
legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("red","green","blue"))

plot(pc$Global_reactive_power, ylab="Global reactive power", type="l", col='black')

dev.copy(png, file="plot4.png")
dev.off()
