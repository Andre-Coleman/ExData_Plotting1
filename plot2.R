## Andre Coleman, Jr.
## Course Project 1, Exploratory Data Analysis, Coursera
## Plot 2
## January 19, 2021

dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
rdataset1 <- dataset[dataset$Date == "1/2/2007",]
rdataset2 <- dataset[dataset$Date == "2/2/2007",]
rdataset <- rbind(rdataset1, rdataset2)

rdataset$Global_active_power <- as.numeric(rdataset$Global_active_power)
rdataset$DateTime <- strptime(paste(rdataset$Date, rdataset$Time), format="%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png")
plot(rdataset$DateTime, rdataset$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)")
dev.off()