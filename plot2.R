geta <- subset(data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";"), data$Date == "1/2/2007" | data$Date == "2/2/2007")
dates <- geta$Date
times <- geta$Time 
x <- paste(dates, times)
xx <- strptime(x, "%d/%m/%Y %H:%M:%S")
geta2 <- geta
geta2$Time <- xx
geta2$Global_active_power <- as.numeric(as.character(geta$Global_active_power))
png(filename = "/Users/shantanupawar/Desktop/Coursera/Exploratory_Data_Analysis/Project_1/plot2.png")
with(data = geta2, plot(Time, Global_active_power, type = "l", xlab = "",ylab = "Global Active Power (kilowatts)"))
dev.off()
