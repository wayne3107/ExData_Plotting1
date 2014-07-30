data <- read.csv('household_power_consumption.txt',header=F,sep=';',skip=66637,nrows=2880)
temp <- read.csv('household_power_consumption.txt',header=T,sep=';',nrows=1)
names(data) <- names(temp)

png(file = 'plot1.png',width = 480, height = 480, units = "px")
hist(data$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)')
dev.off()