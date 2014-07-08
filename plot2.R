hpc <- read.csv('household_power_consumption.txt', sep=";", na.strings="?", as.is=T)
feb_hpc <- hpc[hpc$Date == '1/2/2007' | hpc$Date == '2/2/2007', ]
feb_hpc$DateTime <- strptime(paste(feb_hpc$Date, feb_hpc$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
png(file="plot2.png",width=480,height=480)
plot(feb_hpc$DateTime,feb_hpc$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()