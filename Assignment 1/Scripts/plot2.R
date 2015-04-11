source('plot1.R')

## Plot the actual graph
png(filename='plot2.png',width=480,height=480,units='px')
plot(dat$DT,dat$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()