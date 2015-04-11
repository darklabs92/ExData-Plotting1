source('plot1.R')

#Start the plot
png(filename='plot4.png',width=480,height=480,units='px')

#Split the plot into 4 parts
par(mfrow=c(2,2))

#Plot the graph at top (1,1)
plot(dat$DT,dat$Global_active_power, main="",xlab="",
     ylab="Global Active Power", type="l",col="black")

#Plot the graph at top (1,2)
plot(dat$DT,dat$Voltage,type="l",col="black",main="",xlab="datetime",ylab="Voltage")

#Plot the graph at top (2,1)
plot(dat$DT,dat$Sub_metering_1,col="black",type="l", xlab="", ylab="Energy Sub Metering")
lines(dat$DT,dat$Sub_metering_2,col="red",type="l")
lines(dat$DT,dat$Sub_metering_3,col="blue",type="l")
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),lty='solid')

#Plot the graph at top (2,2)
plot(dat$DT,dat$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",
     col="black",main="",type="l")

dev.off()
