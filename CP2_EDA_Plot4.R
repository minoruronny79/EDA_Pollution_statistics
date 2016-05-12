#####################################################################
#################QUESTION 4: Coal combustion#########################
#####################################################################

NEI <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/summarySCC_PM25.rds")

SCC <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/Source_Classification_Code.rds")


#Ggplot Graphic
library(ggplot2)
SCC.coal <- SCC[grepl("Coal" , SCC$Short.Name), ] #Search in column Short.Name the word "coal"
NEI.coal <- NEI[NEI$SCC %in% SCC.coal$SCC, ]  #Includes all SCC.coal records with "%in%"
plot_coal <- ggplot(NEI.coal, aes(x = factor(year), y = Emissions, fill =type)) + geom_bar(stat= "identity", width = .4) + xlab("year") +ylab("Coal-Related PM2.5 Emissions") + ggtitle("Total Coal-Related PM2.5 Emissions")
print(plot_coal)

#Saving the Grcaphic Plot4_Coal Combustion 
dev.copy(png, file="Plot4_Coal combustion.png", height=480, width=480)
dev.off()