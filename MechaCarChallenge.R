# --------------
# Deliverable 1
# --------------

# Use the library() function to load the dplyr package.
library(dplyr) 

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Perform linear regression using the lm() function. 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# --------------
# Deliverable 2
# --------------

# Import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function
# to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot 
# by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <-  Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# --------------
# Deliverable 3
# --------------

# Use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI, mu=1500)

# Write three more RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

# Lot 1
lot1 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot1")
t.test(lot1$PSI, mu=1500)

# Lot 2
lot2 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot2")
t.test(lot2$PSI, mu=1500)

# Lot 3
lot3 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot3")
t.test(lot3$PSI, mu=1500)