#####################################################################
#######QUESTION 5: Vehicle motor emissions in Baltimore##############
#####################################################################
library(ggplot2)


Baltimore<-subset(NEI, fips=="24510") #Just Baltimore from NEI database (1)
SSC.vehicle.Bal<-SCC[grepl("Vehicles", SCC$Short.Name),] #Just SCC with character "vehicles" (2)
Baltimore.vehicle<-Baltimore[Baltimore$SCC %in% SSC.vehicle.Bal$SCC,]  #Together 1 and 2. SCC and character "vehicles"
Baltimore.vehicle                  


#Graphic 
plot_Baltimore<-ggplot(data = Baltimore.vehicle, aes(factor(year), Emissions))
plot_Baltimore+geom_bar(stat = "identity")+theme_bw()+labs(x="year", y="Total Emission 10^5 Tons",title="Motor Vehicle Source Emissions Baltimore 99-08" ) 

#Saving the Grcaphic Plot4_Coal Combustion 
dev.copy(png, file="Plot4_Coal combustion.png", height=480, width=480)
dev.off()