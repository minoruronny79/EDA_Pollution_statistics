#####################################################################
###############QUESTION 1: Total emmision per year###################
#####################################################################

NEI <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/summarySCC_PM25.rds")

SCC <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/Source_Classification_Code.rds")


#Using aggregate function
Emi_year2 <- with(NEI, aggregate(Emissions, by = list(year), sum))
Emi_year2
class(Emi_year2)
plot(Emi_year2, main = "Total PM2.5 Emissions", xlab = "Year", ylab = "PM2.5 Emissions", pch = 19)


#Saving the Graphic Plot1_Total Emissions per year
dev.copy(png, file="Plot1_Total Emissions Country per year.png", height=480, width=480)
dev.off()
