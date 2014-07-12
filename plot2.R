## This code is used to create Plot 1 and save the result in PNG file
EPCdata<-read.table("household_power_consumption.txt", sep=";",header=TRUE, dec=".", na.string="?")
EPCdata<-subset(EPCdata,EPCdata$Date=='1/2/2007' | EPCdata$Date=='2/2/2007')
## Concatenate Date and Time column into one column
dateTime<-strptime(paste(EPCdata[,1],EPCdata[,2]), format="%d/%m/%Y %H:%M:%S")
##plotting my result into PNG file
png("plot2.png",width=480,height=480)
plot(dateTime,EPCdata$Global_active_power,type="l",ylab="Global Active Power(Kilowatts)",xlab="")
## closing the PNG file
dev.off()