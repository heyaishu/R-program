#import dataset

data <-read.csv("C:/Users/mchin/Downloads/alzheimers.csv")

#view datset
head(data)
tail(data)
View(data)

#dimension
dim(data)

#column
names(data)

#structure of data
str(data)

#summary
summary(data)

#check missing values
sum(is.na(data))

#missing value in each column
colSums(is.na(data))

#check duplicate rows
sum(duplicated(data))

#data type
sapply(data,class)

#no.of unique values

sapply(data,function(x) length(unique(x)))

#frewuency table

table(data$Diagnosis)

table(data$Gender)

#percentage distribution
prop.table(table(data$Diagnosis))*100

#Histogram distribution

hist(data$Age,
     main="Age Distribution",
     xlab="Age",
     col="Blue")

#pie chart

pie(table(data$Diagnosis),
    main="Diagnosis Distribution")

#Barplot

barplot(table(data$Diagnosis))
    main = "Frequency of Diagnoses", 
    xlab = "Diagnosis",           
    ylab = "Count",               
    col = "blue")             
    
#scatterplot

plot(data$Age,
     data$BMI,
     main="Age Vs BMI",
     xlab="Age",
     ylab="BMI",
     col="Blue",
     pch=20)

table(data$Diagnosis)

table(data$Gender)
