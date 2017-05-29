source("source.R")

##Plot3:

plot(dat_new$Date, dat_new$Sub_metering_1,type = "l",xlab = "",ylab = 'Energy sub metering')
lines(dat_new$Date,dat_new$Sub_metering_2,col='red')
lines(dat_new$Date,dat_new$Sub_metering_3,col='blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),pch = '__')

dev.copy(png,file='plot3.png',width=480,height=480)
dev.off()
