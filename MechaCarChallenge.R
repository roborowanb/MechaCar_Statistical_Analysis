library(dplyr)
setwd("C:/Users/Rowan/Documents/Challenge")


#deliverable 1
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCar_mpg_linearReg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(MechaCar_mpg_linearReg)#generate summary statistics


#deliverable 2
Suspension_Coil <- read.csv(file='suspension_coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_Coil %>%  summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),SD_PSI=sd(PSI), Var_PSI=var(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),SD_PSI=sd(PSI), Var_PSI=var(PSI), .groups = 'keep')


#deliverable 3
Sample_total <- Suspension_Coil %>% sample_n(50)

lot1 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == "Lot1",]
lot2 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == "Lot2",]
lot3 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == "Lot3",]


t.test(log10(Sample_total$PSI),mu=mean(log10(Suspension_Coil$PSI)))
t.test(log10(lot1$PSI),mu=mean(log10(Suspension_Coil$PSI))) 
t.test(log10(lot2$PSI),mu=mean(log10(Suspension_Coil$PSI))) 
t.test(log10(lot3$PSI),mu=mean(log10(Suspension_Coil$PSI))) 


