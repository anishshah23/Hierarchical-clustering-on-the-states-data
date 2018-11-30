library(ISLR)
set.seed(2)
data <- USArrests

#A

hierclust.compl = (hclust(dist(data), method="complete"))
plot(hierclust.compl)

#B

cutree(hierclust.compl, 3)
table(cutree(hierclust.compl, 3))

#C
dsc = scale(USArrests)
hierclust.sc.complete = hclust(dist(dsc), method="complete")
plot(hierclust.sc.complete)

#D
cutree(hierclust.sc.complete, 3)
table(cutree(hierclust.sc.complete, 3))
table(cutree(hierclust.sc.complete, 3), cutree(hierclust.compl, 3))
