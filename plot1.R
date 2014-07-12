## This code is used to create Plot 1 and save the result in PNG file
EPCdata<-read.table("household_power_consumption.txt", sep=";",header=TRUE)
EPCdata<-subset(EPCdata,EPCdata$Date=='1/2/2007' | EPCdata$Date=='2/2/2007')
##plotting my result into PNG file
png("plot1.png",width=480,height=480)
hist(as.numeric(as.character(EPCdata[,3])), border="black", col="red" , main="Global Active Power",xlab="Global Active Power (Kilowatts)")
## closing the PNG file
dev.off()