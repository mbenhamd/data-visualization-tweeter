langTabCount = read.csv("tabLangWithoutNull.csv")
langTabCount[,2]
pie(langTabCount[1:10,2],labels = langTabCount[1:10,1],main = "First 10 languages",sub="1 208 516 638 tweets counted")
sum(langTabCount[,2])
