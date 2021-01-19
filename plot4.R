## Andre Coleman, Jr.
## Course Project 1, Exploratory Data Analysis, Coursera
## Plot 4
## January 19, 2021

dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
rdataset1 <- dataset[dataset$Date == "1/2/2007",]
rdataset2 <- dataset[dataset$Date == "2/2/2007",]
rdataset <- rbind(rdataset1, rdataset2)

rdataset$Global_active_power <- as.numeric(rdataset$Global_active_power)
rdataset$DateTime <- strptime(paste(rdataset$Date, rdataset$Time), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png")
par(mfrow = c(2, 2))
plot(rdataset$DateTime, rdataset$Global_active_power, type="l", ylab = "Global Active Power")
plot(rdataset$DateTime, rdataset$Voltage, type="l", col = "black", ylab = "Voltage", xlab = "datetime")
plot(rdataset$DateTime, rdataset$Sub_metering_1, type="l", col = "black", ylab = "Energy Sub Metering", xlab = "")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
lines(rdataset$DateTime, rdataset$Sub_metering_2, col = "red")
lines(rdataset$DateTime, rdataset$Sub_metering_3, col = "blue")
plot(rdataset$DateTime, rdataset$Global_reactive_power, type="l", col = "black", ylab = "Global_reactive_power", xlab = "datetime")
dev.off()