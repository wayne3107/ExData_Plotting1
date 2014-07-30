data <- read.csv('household_power_consumption.txt',header=F,sep=';',skip=66637,nrows=2880)
temp <- read.csv('household_power_consumption.txt',header=T,sep=';',nrows=1)
names(data) <- names(temp)

png(file = 'plot2.png',width = 480, height = 480, units = "px")
plot(1:dim(data)[1],data$Global_active_power,type='l',xaxt='n',xlab='',ylab='Global Active Power (kilowatts)')
axis(side=1,at=c(1,1441,2881),labels=c('Thu','Fri','Sat'))
dev.off()
