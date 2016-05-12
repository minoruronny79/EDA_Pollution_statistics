#####################################################################
#########QUESTION 3: Total emmision by type in Baltimore#############
#####################################################################

NEI <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/summarySCC_PM25.rds")

SCC <- readRDS("F:/Edu_Universidad/4_Online/1_Coursera/Econometrics/JHopkins_Datascience/4_Exploratory_Data/EDA_Week4/Quiz_EDA_W4/Source_Classification_Code.rds")


library(ggplot2)

#A subset of NEI with Baltimore city (fips="24510")
Baltimore<-subset(NEI, fips=="24510")

#Statistics at Baltimore
type_baltimore<-table(Baltimore$type)
str(Baltimore)

#Ggplot Graphic
g<-ggplot(data=Baltimore, aes(factor(year),Emissions,fill=type))
summary(g)

g+geom_bar(stat = "identity")
g+geom_bar(stat = "identity")+facet_grid(.~type)

#Saving the Graphic Plot3_Emissions by type in Baltimore 
dev.copy(png, file="Plot3_Emissions by type in Baltimore.png", height=480, width=480)
dev.off()