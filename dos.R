slim <- read.csv("slim_airplanes.csv")
slim <- slim[2:14]

#prueba <- slim[2:5]
destinos <- subset(slim,select = c("Month","FlightNum","OriginAirportID","DestAirportID","Distance","Cancelled"))
tiempos <- subset(slim,select = c("Month","FlightNum","CRSDepTime","CRSArrTime","DepDelay","ArrDelay","Distance","Cancelled"))
pairs(tiempos)
pairs(destinos)
cor(tiempos)
cov(tiempos)
cor(destinos)
cov(destinos)

#cor(tiempos, method = "kendall")
cor(slim)
summary(slim)

boxplot(slim)
boxplot(slim$Quarter)
title("Quarter")

boxplot(slim$Month)
title("Month")

boxplot(slim$FlightNum)
title("Flight Number")

boxplot(slim$OriginAirportID)
title("Origin Airport ID")

boxplot(slim$DestAirportID)
title("Destination Airport ID")

boxplot(slim$CRSDepTime)
title("CRS Departure Time")

boxplot(slim$DepDelay)
title("Departure Delay")

boxplot(slim$CRSArrTime)
title("CRS Arrival Time")

boxplot(slim$ArrDelay)
title("Arrival Delay")

boxplot(slim$Distance)
title("Distance")

#boxplot(slim$CancellationCode)
#boxplot(slim$Cancelled)
