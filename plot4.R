geta <- subset(data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";"), data$Date == "1/2/2007" | data$Date == "2/2/2007")
dates <- geta$Date
times <- geta$Time 
x <- paste(dates, times)
xx <- strptime(x, "%d/%m/%Y %H:%M:%S")
geta2 <- geta
geta2$Time <- xx
geta2$Global_active_power <- as.numeric(as.character(geta$Global_active_power))
geta2$Sub_metering_1 <- as.numeric(as.character(geta$Sub_metering_1))
geta2$Sub_metering_2 <- as.numeric(as.character(geta$Sub_metering_2))
geta2$Sub_metering_3 <- as.numeric(as.character(geta$Sub_metering_3))
geta2$Global_reactive_power <- as.numeric(as.character(geta2$Global_reactive_power))
geta2$Voltage <- as.numeric(as.character(geta2$Voltage))
png(filename = "/Users/shantanupawar/Desktop/Coursera/Exploratory_Data_Analysis/Project_1/plot4.png")
par(mfcol = c(2,2))
with(data = geta2, plot(Time, Global_active_power, type = "l", xlab = "",ylab = "Global Active Power (kilowatts)"))
with(data = geta2, plot(Time, Sub_metering_1, type = "l", xlab = "",ylab = "Energy sub metering", col = "black"))
with(data = geta2, lines(Time, Sub_metering_2, type = "l", col = "red"))
with(data = geta2, lines(Time, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(data = geta2, plot(Time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage", col = "black"))
with(data = geta2, plot(Time, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", col = "black"))
dev.off()
