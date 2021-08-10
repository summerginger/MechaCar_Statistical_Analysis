#Deliverable 1 
library(dplyr)
mecha_data <- read.csv('MechaCar_mpg.csv') #import dataset
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)
summary(mecha_lm)
abline(mecha_lm,col="blue")

#Deliverable 2
Mecha_coil <- read.csv('Suspension_Coil.csv') #import dataset
total_summary <- Mecha_coil %>% 
summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- Mecha_coil %>% group_by(Manufacturing_Lot) %>% 
summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3

# Across all Lots
t.test(Mecha_coil$PSI,mu = 1500)

#Suspension Coil T-Tests

# Lot 1
t.test(subset(Mecha_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Lot 2
t.test(subset(Mecha_coil,Manufacturing_Lot == "Lot2")$PSI,mu = 1500)

# Lot 3
t.test(subset(Mecha_coil,Manufacturing_Lot == "Lot3")$PSI, mu = 1500)

