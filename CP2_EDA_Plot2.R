#####################################################################
###########QUESTION 2: Total emmision in Baltimore###################
#####################################################################

NEI <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/summarySCC_PM25.rds")

SCC <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/Source_Classification_Code.rds")


#A subset of NEI with Baltimore city (fips="24510")
Baltimore<-subset(NEI, fips=="24510")
Balt_year<-with(Baltimore, aggregate(Emissions, by=list(year), sum))
plot(Balt_year, main = "Total PM2.5 Emissions Baltimore", xlab = "Year", ylab = "PM2.5 Emissions", pch = 19)

#Saving the Graphic Plot2_Total Emissions Baltimore per year
dev.copy(png, file="Plot2_Total Emissions Baltimore per year.png", height=480, width=480)
dev.off()
