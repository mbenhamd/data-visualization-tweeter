library(plotrix)
getwd()
langTabCount = read.csv("tabLangWithoutNull.csv")
langTabCount[,2]
colnames(langTabCount)
color = grDevices::colors()[grep('gr(a|e)y', grDevices::colors(), invert = T)]

pie(langTabCount[1:10,2],explode=0.1,labels = langTabCount[1:10,1],main = "First 10 languages",col=sample(color,10),radius=0.9)

sum(langTabCount[,2])
langTabCount[1:10,1]


