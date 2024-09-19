#TP1
#Exercice 1

#1)

iris
class(iris)

#2)

View(iris)

#3)

nrow(iris)

#4)

ncol(iris)

#5)

colnames(iris)

#6)

summary(iris)

#7)

iris[ , c("Sepal.Length","Species")]

#9)

iris[ c(100,103,105),]

iris[50:100,]

#11)

mean(iris$Sepal.Length)

#12)

median(iris$Sepal.Width)

#13)

sd(iris$Petal.Length)

#14)

quantile(iris$Petal.Width,probs=seq(0.1,1,0.1))

#exercice 2

#1)

dfManga=read.csv(manga.csv)

dfManga=read.csv("L:/BUT/SD/Promo 2023/hbelghachem/prog r/tp1/manga.csv")
dfAnime=read.csv("L:/BUT/SD/Promo 2023/hbelghachem/prog r/tp1/anime.csv")

#2)

View(dfManga)
View(dfAnime)

#3)

dim(dfAnime)
dim(dfManga)

#4)

mean(dfManga$Score)
mean(dfAnime$Score)

#5)

sum(dfManga$Vote)
sum(dfAnime$Vote)

#6)

sd(dfManga$Score)
sd(dfAnime$Score)

#7)

quantile(dfManga$Score, probs=seq(0.1,0.9,0.1))
quantile(dfAnime$Score, probs=seq(0.1,0.9,0.1))

#Les fonctions subset(), table() et prop.table()
#Filtre sur les mangas

#1)

extraction1=subset(dfManga, Score > 9)
nrow(extraction1)

#2)

extraction2=subset(dfManga, Vote >= 200000)
nrow(extraction2)

#3)

extraction3=subset(dfManga,Vote >= 200000 & Score >= 8)
nrow(extraction3)

#4)

extraction3=subset(dfManga,Score >= 7 & Score <= 8)
nrow(extraction3)

#Filtre sur les Animes

#1)

effectifRating = table(dfAnime$Rating)
length(effectifRating)
prop.table(effectifRating)

#2)

extraction2=subset(dfAnime,Rating=="R - 17+ (violence & profanity)")
nrow(extraction2)

#3)

extraction3=subset(dfAnime,Rating=="R - 17+ (violence & profanity)" & Score > 8)
nrow(extraction3)

#4)

extraction4=subset(dfAnime,Rating!="R - 17+ (violence & profanity)")
nrow(extraction4)

#5)

extraction4=subset(dfAnime,Rating!="PG - Children et G - All Ages")
nrow(extraction4)
