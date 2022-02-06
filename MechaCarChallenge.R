
# Deliverable 1: Linear Regression to Predict MPG

library(dplyr) 
library(tidyverse)
library(jsonlite)

MechaCar <- read.csv('MechaCar_mpg.csv')
head(MechaCar)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) #generate multiple linear regression model														

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary statistics														


# Deliverable 2: Summary Statistics on Suspension Coils

Suspension_Coil <- read.csv('Suspension_Coil.csv')
head(Suspension_Coil)


total_summary <- Suspension_Coil%>%
 summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
            
# Deliverable 3: T-Tests on Suspension Coils

# PSI across all manufacturing lots
t.test((Suspension_Coil$PSI),mu=mean(1500))

# # PSI across all manufacturing lots

Lot1 = subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')

t.test((Lot1$PSI),mu=mean(1500))
t.test((Lot2$PSI),mu=mean(1500))
t.test((Lot3$PSI),mu=mean(1500))
            