## I have already filtered the necesary data for two days
## the filter file is "household_power_consumption.csv"

par(bg="white")
Sys.setenv(LANG = 'en')
Sys.setlocale("LC_TIME", "English") ## myt laptop is in spanish, so I need to set locale
pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
pc <- within(pc, { timestamp=paste(format(as.Date(Date,format("%d/%m/%Y")),"%Y-%m-%d"),"T",Time, sep="") })
plot(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Global_active_power, ylab="Global active power (kilowatts)", type="l", xlab="days")
dev.copy(png, file="plot2.png")
dev.off()
