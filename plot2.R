# Read Data

mydata <- './Data/household_power_consumption.txt'
data <- read.table(mydata, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
subsetdata <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]

# Plot 2

dateandtime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subsetdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateandtime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

