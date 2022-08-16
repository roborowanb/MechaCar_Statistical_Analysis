library(dplyr)
setwd("C:/Users/Rowan/Documents/Challenge")
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
MechaCar_mpg_linearReg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
summary(MechaCar_mpg_linearReg)#generate summary statistics
