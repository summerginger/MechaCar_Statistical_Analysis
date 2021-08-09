#Deliverable 1 
library(dplyr)
mecha_data <- read.csv('MechaCar_mpg.csv') #import dataset
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)
summary(mecha_lm)
abline(mecha_lm,col="blue")

#Deliverable 2
Mecha_table <- read.csv('Suspension_Coil.csv') #import dataset
total_summary <- Mecha_table %>% 
summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- Mecha_table %>% group_by(Manufacturing_Lot) %>% 
summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

  