source('plot1.R')

png(filename='plot3.png',width=480,height=480,units='px')


## Plot the actual graphpar(new=T)
plot(dat$DT,dat$Sub_metering_1,col="black",type="l", xlab="", ylab="Energy Sub Metering")
lines(dat$DT,dat$Sub_metering_2,col="red",type="l")
lines(dat$DT,dat$Sub_metering_3,col="blue",type="l")

## Plot the legend
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),lty='solid')

dev.off()