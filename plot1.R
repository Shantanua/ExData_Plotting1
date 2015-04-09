geta <- subset(data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";"), data$Date == "1/2/2007" | data$Date == "2/2/2007");
png(filename = "/Users/shantanupawar/Desktop/Coursera/Exploratory_Data_Analysis/Project_1/plot1.png");
hist(as.numeric(as.character(geta$Global_active_power)), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power");
dev.off();