## Andre Coleman, Jr.
## Course Project 1, Exploratory Data Analysis, Coursera
## Plot 1
## January 19, 2021

dataset <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
rdataset1 <- dataset[dataset$Date == "1/2/2007",]
rdataset2 <- dataset[dataset$Date == "2/2/2007",]
rdataset <- rbind(rdataset1, rdataset2)

rdataset$Global_active_power <- as.numeric(rdataset$Global_active_power)
png(filename = "plot1.png")
hist(rdataset$Global_active_power, ylim = c(0,1200), xlab = "Global Active Power (kilowatts)", col = "red", main = paste("Histogram of" , "Global Active Power"))
dev.off()