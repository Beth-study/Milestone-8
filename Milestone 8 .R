# Milestone 8

#~Linear model 
NYPD_Arrest2.lm <- lm (YCoordinates ~ XCoordinates + Latitude + Longitude , data = NYPD_Arrest2)
 NYPD_Arrest2.lm

# Call:
  lm(formula = YCoordinates ~ XCoordinates + Latitude + Longitude, 
     data = NYPD_Arrest2)

# Coefficients:
#  (Intercept)  XCoordinates      Latitude     Longitude  
# -6.509e+06    -3.765e-01     3.641e+05     1.047e+05  

# linear model equation : y = -6.509e+06x - 3.765e-01 + 3.641e+05 + 1.047e+05 

#~rsquared for fit model 
summary(NYPD_Arrest2.lm)$r.squared
# 0.9999998

# ~histogram of residuals
hist(resid(NYPD_Arrest2.lm),xlab= "residuals", ylab ="conditions of the linear model", main = "Residuals")

#~scatterplot
police.2 <- NYPD_Arrest2$YCoordinates + NYPD_Arrest2$XCoordinates +NYPD_Arrest2$Latitude + NYPD_Arrest2$Longitude
plot(police.2, resid(NYPD_Arrest2.lm), xlab = "actual observed response value", ylab = "Residuals", main = "Actual Observed Response Vaules VS. Residuals")
abline (h= 0, col = "red")
