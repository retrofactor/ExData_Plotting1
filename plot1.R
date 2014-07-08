hpc <- read.csv('household_power_consumption.txt', sep=";", na.strings="?", as.is=T)
feb_hpc <- hpc[hpc$Date == '1/2/2007' | hpc$Date == '2/2/2007', ]
png(file="plot1.png",width=480,height=480)
hist(feb_hpc$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()