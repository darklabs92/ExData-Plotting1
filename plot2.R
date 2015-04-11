## Modify the date and time in order to use them together
df <- as.Date(dat$Date, format('%d/%m/%Y'))
dat$Date <- df
dat$DT <- as.POSIXct(paste(dat$Date, dat$Time), format="%Y-%d-%m %H:%M:%S")

## Plot the actual graph
png(filename='plot2.png',width=480,height=480,units='px')
plot(dat$DT,dat$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()