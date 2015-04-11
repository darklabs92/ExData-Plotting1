##Take the zip file as input and read the txt file
d <- unzip("G:/Coursera/Exploratory Data Analysis/Assignment 1/exdata-data-household_power_consumption.zip")
dat <- read.table(d, sep=";", header=TRUE)

## Plot the acual graph
png(filename='plot1.png',width=480,height=480,units='px')
hist(dat$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()