source("source.R")
##Plot1:
hist(dat_new$Global_active_power,col = 'red',main = 'Global Active Power',xlab = '')
dev.copy(png,file='plot1.png',width=480,height=480)
dev.off()



