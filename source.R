setwd("/Users/sampathsomayajula/Desktop/Modeling/Coursera/Exploratory_Analysis")

##Loading data
data <- read.csv("~/Desktop/Modeling/Coursera/Exploratory_Analysis/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)

#Subseting required data:
index<-which(data$Date %in% c('1/2/2007','2/2/2007'))
dat_new<-data[index,]
dat_new$Global_active_power<-as.numeric(dat_new$Global_active_power)
dat_new$Global_reactive_power<-as.numeric(dat_new$Global_reactive_power)
dat_new$Voltage<-as.numeric(dat_new$Voltage)

##Converting Date and time into Date/time:
dat_new$Date<-strptime(paste(dat_new$Date,dat_new$Time),"%d/%m/%Y %H:%M:%S")

##Converting sub metric data into numeric variables:
dat_new[,7]<-as.numeric(dat_new[,7])
dat_new[,8]<-as.numeric(dat_new[,8])
dat_new[,9]<-as.numeric(dat_new[,9])
