df_sub<-read.table("household_power_subset.txt",header = TRUE,sep = ";")

# third plot
png("Plot3.png",width = 480,height = 480)
plot(df_sub$Sub_metering_1,type = "l",xaxt="n",xlab="",ylab="Energy sub metering")
lines(df_sub$Sub_metering_2,type = "l",col="red",xaxt="n")
lines(df_sub$Sub_metering_3,col="blue",xaxt="n")
axis(1,at=2900,"Saturday")
axis(1,at=1450,"Friday")
axis(1,at=0,"Thursday")

legend("topright",legend = c("Sub_metering_1",
                             "Sub_metering_2",
                             "Sub_metering_3"),col=c("black","red","blue"),
       cex = 1,lty = 1)
dev.off()