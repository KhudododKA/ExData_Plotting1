df_sub<-read.table("household_power_subset.txt",header = TRUE,sep = ";")

## the second plot
png("Plot2.png",width = 480,height = 480)
plot(df_sub$Global_active_power,type = "l",xaxt="n",xlab="",ylab="Global active power(kilowatts)")
axis(1,at=2900,"Saturday")
axis(1,at=1450,"Friday")
axis(1,at=0,"Thursday")
dev.off()