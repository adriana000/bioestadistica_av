

#grafico de dispersion de Y vs X
ggplot(bd, aes(x= dosis_cd, y=cd_total))  +  geom_point()

m1<-lm(cd_total ~ dosis_cd, data=bd)
summary(m1)

#Modelo de regresion
m1<-lm(cd_total ~ dosis_cd, data=bd)
summary(m1)


m1<- lm((cd_tallo+cd_raiz) ~ dosis_cd, data = bd)
summary(m1)

model_coeficients <- m1$coefficients

##OO:  -136.415000    
##dosis_cd: 4.201083 

##Multiple R-squared:  0.9471

cd_total <- cadmio$cd_tallo + cadmio$cd_raiz
bd <- data.frame (cadmio$dosis_cd, cd_total)
ggplot(bd, aes(x= cadmio.dosis_cd, y=cd_total))  +  geom_point()

# Supuestos de normalidad
residuals(m1)
hist(residuals(m1))
boxplot(residuals(m1))
qqnorm(residuals(m1))
qqline(residuals(m1))


