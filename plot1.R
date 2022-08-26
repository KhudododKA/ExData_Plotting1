df_sub<-read.table("household_power_subset.txt",header = TRUE,sep = ";")

## Make plot 
png("Plot1.png",width = 480,height = 480)
hist(df_sub$Global_active_power,main = "Global Active Power",xlab = "Global Active Power(kilowatts)",
     col="red")
dev.off()
