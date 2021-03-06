# MechaCar_Statistical_Analysis

## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team. 
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
## Results
**MechaCarChallenge.RScript file** <br>
![click here for : MechaCarChallenge.RScript file](https://github.com/dhaval-28/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)

## Summary
### Deliverable 1 -  Linear Regression to Predict MPG

<p align="center">
<img src = "https://github.com/dhaval-28/MechaCar_Statistical_Analysis/blob/main/Images/Del1_Multiple_Linear_Regression.png" /><br>
<img src = "https://github.com/dhaval-28/MechaCar_Statistical_Analysis/blob/main/Images/Del1_Multiple_Linear_Summary.png" />
</p>

* **1 Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
Two Variables : vehicle_length , ground_clearance.  The variance for these two variables is close to 0. 

* **2 Is the slope of the linear model considered to be zero? Why or why not?**
No, the slope of the linear model is NOT considered to be zero. p vlaue is less than 5% significance value. It means there are sufficient evidence to reject the null hypothesis and m ≠ 0 (alternative hypothesis)

* **3 Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
   Yes it does. r-squared (r2) is 0.68.  To quantify how well our linear model can be used to predict future observations, our linear regression functions will calculate an r-squared value. The r-squared (r2) value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points.


### Deliverable 2 -  Summary Statistics on Suspension Coils

<p align="center">
<img src = "https://github.com/dhaval-28/MechaCar_Statistical_Analysis/blob/main/Images/Del2_Total_Summary.png" />
<img src = "https://github.com/dhaval-28/MechaCar_Statistical_Analysis/blob/main/Images/Del2_Lot_Summary.png"/>
</p>

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
* **For all manufacturing lots in total** : total variance is 62 which is less than 100 pounds. So it does mee the specification. 
* **Each lot individually** Lot 3 has variance of 170 which exceeds 100. So it does not meet the specifications. 

### Deliverable 3 -  T-Test on Suspension Coils

<p align="center">
<img src = "https://github.com/dhaval-28/MechaCar_Statistical_Analysis/blob/main/Images/Del3_Total_T_Test.png" /><br>
<img src = "https://github.com/dhaval-28/MechaCar_Statistical_Analysis/blob/main/Images/Del3_Lot_T_Test.png" />
</p>

* **For all manufacturing lots in total** :  Assuming our significance level was the common 0.05 percent, our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

* **For Each manufacturing lots in total** : 
  * Lot 1 & 2 : For Lot1 & 2 , p-value is above our significance level. Therefore , we don't have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
  * Lot 3 : For Lot3 , p-value is below our significance level. Therefore , there are sufficient evidence to reject the null hypothesis.

### Deliverable 4 -  Study Design: MechaCar vs Competition
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

*  **What metric or metrics are you going to test?** :  Compare the safety ratings of the MechaCar vehicles vs. safety ratings of other manufacturers vehicles.
*  **What is the null hypothesis or alternative hypothesis?**
    * H0 : There is no difference in safety rating of the MechaCar vehicles and competitors vehicles.
    * Ha : Safety ratings of the MechaCar vehicles are better than the competitors vehicles.

*  **What statistical test would you use to test the hypothesis? And why?**
    We would use ANOVA test. It would identify statistical difference between the distribution means from multiple samples. 

*  **What data is needed to run the statistical test?** We would need safety ratings for MechaCar vehicles and other manufacturers.
