# MechaCar_Statistical_Analysis

## Overview 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. The purpose of this analysis is to review the production data for insights that may help the manufacturing team by:
- Performing multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Running t-tests to determine if the manufacturing lots are statistically different from the mean population
- Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Resources
### Data Source 
- [MechaCars mpg Test Results](https://github.com/lkachury/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) csv file
- [MechaCars Suspension Coils](https://github.com/lkachury/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) csv file

### Software
- RStudio & R 4.2.1  


## Results
### Deliverable 1: Linear Regression to Predict MPG
Using R, design a linear model that predicts the mpg of MechaCar prototypes using several variables from the [MechaCar_mpg.csv file](https://github.com/lkachury/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv). 

1. The [MechaCar_mpg.csv file](https://github.com/lkachury/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) is imported and read into a dataframe:
<br /> ![image](https://user-images.githubusercontent.com/108038989/195750388-3e71244c-8710-480e-9878-42bcf695bfe1.png)
<br /> ![image](https://user-images.githubusercontent.com/108038989/195750731-5d504082-ed80-4db4-99c9-be01caff682f.png)

2. An RScript is written for a linear regression model to be performed on all six variables:
<br /> ![image](https://user-images.githubusercontent.com/108038989/195750818-e4e2b1a8-fbb0-4fa4-b598-e69cba8cc33a.png)

3. An RScript is written to create the statistical summary of the linear regression model with the intended p-values:
<br /> ![image](https://user-images.githubusercontent.com/108038989/195750961-559dcfb0-999d-42d2-95b3-2dcae50536a9.png)

4. There is a summary that addresses all three questions:
    - **Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** <br /> Based on the statistical summary figure above, vehicle length (p-value = 2.60e-12) and ground clearance (p-value = 5.21e-08) are the variables/coefficients that provide a non-random (statistically significant) amount of variance to the mpg values in the MechaCar prototypes. 
    - **Is the slope of the linear model considered to be zero? Why or why not?** <br /> Based on the statistical summary figure above, the p-value for the linear model is 5.35e-11. Since this value is smaller than the assumed significance level of 0.05, we can reject the null hypothesis. This also indicates that the slope of the linear model is not considered to be zero, which further indicates that there is a statistically significant linear relationship between MechaCar prototypes mpg and the variables/coefficients.
    - **Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?** <br /> Based on the statistical summary figure above, the R-squared value for the linear model is 0.7149. This value indicates a positive linear relationship which confirms that this linear model effectively predicts mpg of MechaCar prototypes.

### Deliverable 2: Create Visualizations for the Trip Analysis
Using R, create a summary statistics table from the MechaCar [Suspension_Coil.csv](https://github.com/lkachury/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) file to show the suspension coil’s PSI continuous variable across all manufacturing lots and the following PSI metrics for each lot: mean, median, variance, and standard deviation.

1. The [Suspension_Coil.csv](https://github.com/lkachury/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) file is imported and read into a dataframe:
<br /> ![image](https://user-images.githubusercontent.com/108038989/195762210-c2757a8f-2a66-447a-9e80-3e556544d46e.png)
<br /> ![image](https://user-images.githubusercontent.com/108038989/195762274-8719d55c-489b-473b-bc9d-9cdccefe05a7.png)

2. An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots:
<br /> ![image](https://user-images.githubusercontent.com/108038989/195762356-7e7e47d8-81b3-4a64-bbe7-0249636d9dae.png)
<br /> ![image](https://user-images.githubusercontent.com/108038989/195762520-d205a3a7-909b-47ff-b3c4-f25069f429e0.png)

3. An RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot:
<br /> ![image](https://user-images.githubusercontent.com/108038989/195762408-78fc14f2-f35b-410b-9025-60611513752b.png)
<br /> ![image](https://user-images.githubusercontent.com/108038989/195762570-716b4f5c-8303-498a-9ef2-b45249c6ce76.png)

4. There is a summary that addresses the design specification requirement for all the manufacturing lots and each lot individually:
    - **The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?** <br /> Based on the total summary dataframe figure above, the variance of the suspension coils for all manufacturing lots in total is 62.29356, which meets the current design specifications since the variance of the suspension coils does not exceed 100 pounds per square inch. Based on the lot summary dataframe figure above, Lot 1 and Lot 2 meet the current design specifications with variances of 0.9795918 and 7.4693878 respectively. Lot 3 has a variance of 170.2861224 which does not meet the current design specifications since the variance of the suspension coils exceeds 100 pounds per square inch.

### Deliverable 3: T-Tests on Suspension Coils
Using R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

1. An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population:

2. An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population:

3. There is a summary of the t-test results across all manufacturing lots and for each lot:

### Deliverable 4: Design a Study Comparing the MechaCar to the Competition
Using R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

The statistical study design has the following:
1. A metric to be tested is mentioned:

2. A null hypothesis or an alternative hypothesis is described: 

3. A statistical test is described to test the hypothesis:

4. The data for the statistical test is described: 

## Summary 
