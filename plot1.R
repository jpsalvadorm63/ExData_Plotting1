## I have already filtered the necesary data for two days

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
hist(pc$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file="plot1.png")
dev.off()