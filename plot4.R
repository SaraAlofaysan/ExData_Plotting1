## This code is used to create Plot 1 and save the result in PNG file
EPCdata<-read.table("household_power_consumption.txt", sep=";",header=TRUE, dec=".", na.string="?")
EPCdata<-subset(EPCdata,EPCdata$Date=='1/2/2007' | EPCdata$Date=='2/2/2007')
## Concatenate Date and Time column into one column
dateTime<-strptime(paste(EPCdata$Date,EPCdata$Time), format="%d/%m/%Y %H:%M:%S")
##plotting my result into PNG file
png("plot4.png",width=480,height=480)

par(mfcol=c(2,2))
## Plot1
plot(dateTime,EPCdata[,3],type="l",ylab="Global Active Power",xlab="")

##Plot2
plot(dateTime,EPCdata$Sub_metering_1,type="l",ylab="Energy Sub Metering",xlab="")
lines(dateTime,EPCdata$Sub_metering_2,col="red")
lines(dateTime,EPCdata$Sub_metering_3,col="blue")
legend("topright",col=c("black", "red", "blue"),lty="solid",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

## plot3
plot(dateTime,EPCdata$Voltage,type="l",ylab="Voltage",xlab="")

## plot4
plot(dateTime,EPCdata$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="")

## closing the PNG file
dev.off()
