##Take the zip file as input and read the txt file
d <- unzip("G:/Coursera/Exploratory Data Analysis/Assignment 1/exdata-data-household_power_consumption.zip")
dat <- read.table(d, sep=";", header=TRUE, na.strings='?')
dat <- dat[dat$Date=='1/2/2007' | dat$Date=='2/2/2007',]


## Modify the date and time in order to use them together
df <- as.Date(dat$Date, format('%d/%m/%Y'))
dat$Date <- df
dat$DT <- as.POSIXct(paste(dat$Date, dat$Time), format="%Y-%m-%d %H:%M:%S")


## Plot the acual graph
png(filename='plot1.png',width=480,height=480,units='px')
hist(dat$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()