## I have already filtered the necesary data for two days

pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
f <- factor(pc$Date, labels=c("Thu", "Fri"))
with(pc, plot(strptime(Time,format="%H:%M:%S"), Global_active_power, ylab="Global active power (kilowatts)", type="l"))
## dev.copy(png, file="plot2.png")
## dev.off()