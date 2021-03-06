data <- read.csv('household_power_consumption.txt',header=F,sep=';',skip=66637,nrows=2880)
temp <- read.csv('household_power_consumption.txt',header=T,sep=';',nrows=1)
names(data) <- names(temp)

png(file = 'plot4.png',width = 480, height = 480, units = "px")
par(mfcol = c(2,2))
## Panel 1
plot(1:dim(data)[1],data$Global_active_power,type='l',xaxt='n',xlab='',ylab='Global Active Power')
axis(side=1,at=c(1,1441,2881),labels=c('Thu','Fri','Sat'))

## Panel 2
plot(1:dim(data)[1],data$Sub_metering_1,type='l',xaxt='n',xlab='',ylab='Energy sub metering',col='black')
lines(1:dim(data)[1],data$Sub_metering_2,type='l',col='red')
lines(1:dim(data)[1],data$Sub_metering_3,type='l',col='blue')
axis(side=1,at=c(1,1441,2881),labels=c('Thu','Fri','Sat'))
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty='solid',col=c('black','red','blue'),bty='n')

## Panel 3
plot(1:dim(data)[1],data$Voltage,type='l',xaxt='n',xlab='datetime',ylab='Voltage')
axis(side=1,at=c(1,1441,2881),labels=c('Thu','Fri','Sat'))

## Panel 4
plot(1:dim(data)[1],data$Global_reactive_power,type='l',xaxt='n',xlab='datetime',ylab='Global_reactive_power')
axis(side=1,at=c(1,1441,2881),labels=c('Thu','Fri','Sat'))

dev.off()