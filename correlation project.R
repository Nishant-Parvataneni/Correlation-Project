df<- read.csv('student-mat.csv' , sep=';')
# https://archive.ics.uci.edu/ml/datasets/Student+Performance

head(df)
summary(df)

library(ggplot2)
library(ggthemes)
library(dplyr)

num.cols<- sapply(df, is.numeric)

# install.packages('corrgram',repos = 'http://cran.us.r-project.org')
#install.packages('corrplot',repos = 'http://cran.us.r-project.org')

cor.data<- cor(df[ ,num.cols])
cor.data

library(corrplot)
corrplot(cor.data, method='color')

