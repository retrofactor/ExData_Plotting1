hpc <- read.csv('household_power_consumption.txt', sep=";", na.strings="?", as.is=T)
feb_hpc <- hpc[hpc$Date == '1/2/2007' | hpc$Date == '2/2/2007', ]
feb_hpc$DateTime <- strptime(paste(feb_hpc$Date, feb_hpc$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
png(file="plot3.png",width=480,height=480)
plot(feb_hpc$DateTime,feb_hpc$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(feb_hpc$DateTime, feb_hpc$Sub_metering_2, col="red")
lines(feb_hpc$DateTime, feb_hpc$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"),lwd=1)
dev.off()