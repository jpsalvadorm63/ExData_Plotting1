## I have already filtered the necesary data for two days

par(bg="white")
Sys.setenv(LANG = 'en')
Sys.setlocale("LC_TIME", "English") ## myt laptop is in spanish, so I need to set locale
pc <- read.csv("household_power_consumption.csv", header=TRUE, sep=";", na.string="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
pc <- within(pc, { timestamp=paste(format(as.Date(Date,format("%d/%m/%Y")),"%Y-%m-%d"),"T",Time, sep="") })
plot(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Sub_metering_1, ylab="Energy sub metering", type="l", col='black', xlab="days")
lines(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Sub_metering_2, col='red')
lines(strptime(pc$timestamp, "%Y-%m-%dT%H:%M:%S"),pc$Sub_metering_3, col='blue')
legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))
dev.copy(png, file="plot3.png")
dev.off()
