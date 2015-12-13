## I have already filtered the necesary data for two days

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
plot(pc$Sub_metering_1, ylab="Energy sub metering", type="l", col='red')
lines(pc$Sub_metering_2, col='green')
lines(pc$Sub_metering_3, col='blue')
## axis(1, at=1:6, lab=c("Thu","Thu","Thu","Fri","Fri","Sat"))
dev.copy(png, file="plot3.png")
dev.off()
