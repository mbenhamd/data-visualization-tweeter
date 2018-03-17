nb_tweet_analysed = 383623424

positive = c(63559579, 9296846, 27861247, 7768707, 42382993)
neutral = c(55127659, 15777833, 42460015, 8879626, 48232835)
negative = c(9054496, 3395622, 23281712, 1948578, 24595676)

tab = rbind(positive,neutral,negative)

colnames(tab) = c("joy","fear","anger","surprise","sadness")



JoyPositive = tab[1][1] / sum(tab[,1]) * 100
JoyNegative = tab[3][1] / sum(tab[,1]) * 100

FearNeutral = tab[2,2] / sum(tab[,2]) * 100
FearNeutral

AngerNeutral = tab[2,3] / sum(tab[,3]) * 100
AngerNeutral

SurpriseNegative = tab[3,4] / sum(tab[,4]) * 100
SurpriseNegative

SurpriseNeutral = tab[2,4] / sum(tab[,4]) * 100
SurpriseNeutral

SadnessPositive = tab[1,5] / sum(tab[,5]) * 100
SadnessPositive

SadnessNeutral = tab[2,5] / sum(tab[,5]) * 100
SadnessNeutral

SadnessNegative = tab[3,5] / sum(tab[,5]) * 100
SadnessNegative

TotalJoyTweets = sum(tab[,1]) / nb_tweet_analysed * 100
TotalJoyTweets

TotalFearTweets = sum(tab[,2]) / nb_tweet_analysed * 100
TotalFearTweets

TotalAngerTweets = sum(tab[,3]) / nb_tweet_analysed * 100
TotalAngerTweets

TotalSurpriseTweets = sum(tab[,4]) / nb_tweet_analysed * 100
TotalSurpriseTweets

TotalSadnessTweets = sum(tab[,5]) / nb_tweet_analysed * 100
TotalSadnessTweets

vecTotal = c(TotalJoyTweets,TotalFearTweets,TotalAngerTweets,TotalSurpriseTweets,TotalSadnessTweets)
dataForplot = data.frame(tab)
dataForplot

l=c("Joy/Positive","Joy/Neutral","Joy/Negative",
    "Fear/Positive","Fear/Neutral","Fear/Negative",
    "Anger/Positive","Anger/Neutral","Anger/Negative",
    "Surprise/Positive","Suprise/Neutral","Suprise/Negative",
    "Sadness/Positive","Sadness/Neutral","Sadness/Negative"
    )

couleur=c("#ec2318","#abd8e1","#e42fa5",
    "#28f334","#1120af","#fba9a9",
    "#7fa382","#6e6a4c","#fa4e0c",
    "#10783b","#330977","#beaf9B",
    "#30b0fc","#1226e2","#d9c2bf"
)

pct <- round(tab/sum(tab)*100)

lbls <- paste(l, pct) # add percents to labels 

lbls <- paste(lbls,"%",sep="") # ad % to labels 

barplot(tab,horiz=TRUE,las=1,xlab="Number of Tweets",names.arg=c("Joy","Fear","Anger","Suprise","Sadness"),col = c("green","blue","red"),main = "Ratio of Emotions/Sentiments",legend = rownames(tab),beside=TRUE)

