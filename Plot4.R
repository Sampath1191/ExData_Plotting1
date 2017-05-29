source("source.R")

par(mfcol=c(2,2)) ##This divides the screen into 4 parts to examine the plots together##
##Plots:
##1
plot(dat_new$Date, dat_new$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")

##2
plot(dat_new$Date, dat_new$Sub_metering_1,type = "l",xlab = "",ylab = 'Energy sub metering')
lines(dat_new$Date,dat_new$Sub_metering_2,col='red')
lines(dat_new$Date,dat_new$Sub_metering_3,col='blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),pch = '__')

##3
plot(dat_new$Date, dat_new$Voltage,type = "l",xlab = "datetime",ylab = 'Voltage')

##4
plot(dat_new$Date, dat_new$Global_reactive_power,type = "l",xlab = "datetime",ylab = 'Global_reactive_power')

dev.copy(png,file='plot4.png',width=480,height=480)
dev.off()
