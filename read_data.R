library(tidyverse)
library(zoo)
library(lubridate)

df_hpc<-read.table("Data/household_power_consumption.txt",header = TRUE,sep = ";")
df_sub<-df_hpc%>%
  mutate_at(vars("Global_active_power","Global_reactive_power","Voltage",
                 "Global_intensity","Sub_metering_1","Sub_metering_2",
                 "Sub_metering_3"),as.numeric)%>%mutate(Date=dmy(Date))%>%
  filter(Date>=dmy("01-02-2007") & Date<=dmy("02-02-2007"))

## save the subsetted data for use in other plots
write.table(df_sub,file = "household_power_subset.txt")


