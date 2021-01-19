## Andre Coleman, Jr.
## Course Project 1, Exploratory Data Analysis, Coursera
## Plot 3
## January 19, 2021

dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
rdataset1 <- dataset[dataset$Date == "1/2/2007",]
rdataset2 <- dataset[dataset$Date == "2/2/2007",]
rdataset <- rbind(rdataset1, rdataset2)

rdataset$Global_active_power <- as.numeric(rdataset$Global_active_power)
rdataset$DateTime <- strptime(paste(rdataset$Date, rdataset$Time), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png")
plot(rdataset$DateTime, rdataset$Sub_metering_1, type="l", col = "black", ylab = "Energy Sub Metering", xlab = "")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
lines(rdataset$DateTime, rdataset$Sub_metering_2, col = "red")
lines(rdataset$DateTime, rdataset$Sub_metering_3, col = "blue")
dev.off()