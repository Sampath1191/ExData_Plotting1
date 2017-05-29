source("source.R")


##Plot2:
plot(dat_new$Date, dat_new$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.copy(png,file='plot2.png',width=480,height=480)
dev.off()