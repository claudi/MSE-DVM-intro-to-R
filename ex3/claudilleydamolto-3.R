# Claudi Lleyda Moltó
# 1462908
# ----------
#setwd("~/UAB/MSE/Data-visualization/Exercises/intro-to-R/ex3")
#ls()

# ----------
parades <- read.csv("parades.csv", header = TRUE, sep = ",", quote = "\"")

parades$NOM_TIPUS_PARADA <- as.factor(parades$NOM_TIPUS_PARADA)
parades$TIPIFICACIO_PARADA <- as.factor(parades$TIPIFICACIO_PARADA)
parades$ID_POBLACIO <- as.factor(parades$ID_POBLACIO)
parades$ID_DISTRICTE <- as.factor(parades$ID_DISTRICTE)

pairs(parades[,c("ID_PARADA", "CODI_PARADA", "CODI_INTERC", "LON", "LAT")])
