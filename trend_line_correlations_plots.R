# Scrit writting by Dieunel Derilus
#library(basicTrendline)
par(mfrow=c(3,2))

p1 <- read.csv('env_PPE_abudance1.csv')

# [case 2]  draw lines of confidenc interval only (set CI.fill = FALSE)
trendline(p1$Depth, p1$PPE, model= "exp2P", CI.color = NA, pch=16, linecolor = "black",
          lwd=1.5, cex=1.5, cex.lab=1.2, main= "A)", 
          show.Rpvalue = F, ylab="PPE abundace (%)", xlab ="Depth [m]", ePos.x= "topright")
mtext("p<0.0001", side =3,cex=0.8)

#Temperature
# [case 4]  show regression equation only (set show.Rpvalue = FALSE) exp2P
trendline(p1$Temperature, p1$PPE, model="exp2P", ePos.x= NA, linecolor = "black", CI.color = NA,pch=16,
          lwd=1.5, cex=1.5,cex.lab=1.2, main="B)",
          show.equation = FALSE, show.Rpvalue = FALSE, ylab="PPE abundace (%)", xlab ="Temperature[oC]")
mtext("R=0.27, p < 0.05", side =3, cex=0.8)
#O2
trendline(p1$O2, p1$PPE, model="exp2P", ePos.x= NA, linecolor = "black", CI.color = NA,pch=16,
          lwd=1.5,cex=1.5, cex.lab=1.2,main= "C)" ,
          show.equation = FALSE, show.Rpvalue = FALSE, ylab="PPE abundace (%)", xlab ="O2[umol/L]")
mtext("R=0.14, p > 0.05", side =3, cex=0.8)
#NO2NO3
trendline(p1$NO2NO3, p1$PPE, model="line2P", ePos.x= NA, linecolor = "black", CI.color = NA,pch=16,
          lwd=1.5,cex=1.5, cex.lab=1.2, main= "D)",
          show.equation = F, show.Rpvalue = TRUE, ylab="PPE abundace (%)", xlab ="NO2NO3[umol/L]")
mtext("R=0.04, p > 0.05", side =3, cex=0.8)
#P04
trendline(p1$PO4, p1$PPE, model="line2P", ePos.x= NA, linecolor = "black", CI.color = NA,pch=16,
          lwd=1.5, cex.lab=1.2, main= "E)",
          show.equation = F, show.Rpvalue = F, ylab="PPE abundace (%)", xlab ="PO4[umol/L]")
mtext("R= 0, p > 0.05", side =3, cex=0.8)
#salinity
trendline(p1$Salinity, p1$PPE, model="line2P", ePos.x= NA, linecolor = "black", CI.color = NA,pch=16,
          lwd=1.5, cex=1.5, cex.lab=1.2, main= "F)",
          ylab="PPE abundace (%)", xlab ="Salinity[PSU]")
mtext("R=0.2, p > 0.05", side =3, cex=0.8)










#
