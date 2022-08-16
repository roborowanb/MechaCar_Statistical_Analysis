library(dplyr)
setwd("C:/Users/Rowan/Documents/Challenge")
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCar_mpg_linearReg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(MechaCar_mpg_linearReg)#generate summary statistics

Suspension_Coil <- read.csv(file='suspension_coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_Coil %>%  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),SD_PSI=sd(PSI), Var_PSI=var(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),SD_PSI=sd(PSI), Var_PSI=var(PSI), .groups = 'keep')
