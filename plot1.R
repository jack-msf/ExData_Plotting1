setwd("C:/Users/Jack/Documents/R/data explo/week 1")
consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
library(dplyr)
new_consumption <- filter(consumption, Date == "2007-02-01" | Date == "2007-02-02")
png("plot1.png")
hist(as.numeric(as.character(new_consumption$Global_active_power)), 
     col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
