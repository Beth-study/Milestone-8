NYPD_Arrest2.lm <- lm (YCoordinates ~ XCoordinates + Latitude + Longitude + Age, data = NYPD_Arrest2)
NYPD_Arrest2.lm
summary(NYPD_Arrest2.lm)$r.squared
hist(resid(NYPD_Arrest2.lm),xlab= "residuals", ylab ="conditions of the linear model", main = "Residuals")
police.2 <- NYPD_Arrest2$YCoordinates + NYPD_Arrest2$XCoordinates +NYPD_Arrest2$Latitude + NYPD_Arrest2$Longitude + NYPD_Arrest2$Age
plot(police.2, resid(NYPD_Arrest2.lm), xlab = "actual observed response value", ylab = "Residuals", main = "Actual Observed Response Vaules VS. Residuals")
abline (h= 0, col = "red")
