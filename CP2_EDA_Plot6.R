#####################################################################
#######QUESTION 6: Vehicle motor emissions in Baltimore##############
#####################################################################


NEI <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/summarySCC_PM25.rds")

SCC <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/Source_Classification_Code.rds")


#Subsseting
Baltimore<-subset(NEI, fips=="24510") #Just Baltimore from NEI database (1)
SSC.vehicle.Bal<-SCC[grepl("Vehicles", SCC$Short.Name),] #Just SCC with character "vehicles" (2)
Baltimore.vehicle<-Baltimore[Baltimore$SCC %in% SSC.vehicle.Bal$SCC,]  #Together 1 and 2. SCC and character "vehicles"

Losangeles<-subset(NEI, fips=="06037") #Just Los angeles from NEI database (1)
SSC.vehicle.angel<-SCC[grepl("Vehicles", SCC$Short.Name),] #Just SCC with character "vehicles" (2)
Losangeles.vehicle<-Losangeles[Losangeles$SCC %in% SSC.vehicle.angel$SCC,]

#Plotting with base graphics
par(mfrow=c(1,2), mar=c(2,2,1,1))
with(Baltimore.vehicle, plot(Emissions, year, type = "p", main = "Baltimore"))
with(Losangeles.vehicle, plot(Emissions,year, type = "p", main = "Los Angeles"))

#Saving the Graphic Plot6_Comparative Baltimore vs Losangeles 
dev.copy(png, file="Plot6_Comparative Baltimore vs Losangeles.png", height=480, width=480)
dev.off()