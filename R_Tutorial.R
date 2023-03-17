library("readxl")


data <- read.csv(file = "~/Downloads/exams.csv", header = TRUE)
  
xldata <- readxl::read_excel(file = "(random path)", header = TRUE)

summary(data)

#### this is a comment. you can write love notes to yourself

## commands in r have a specific structure. 

mean(data$math.score)
median(data$math.score)
mode(data$math.score)
min(data$math.score)
max(data$math.score)
quantile(data$math.score)
e1071::skewness(data$math.score)
e1071::kurtosis(data$math.score)

## re-coding data
library(dplyr)

sdb_data = data %>% mutate(gender=recode(gender, "female"= 1, "male"=0)) 


## sub-setting data 


female_data <- subset.data.frame(sdb_data, gender == 1)
male_data <- subset.data.frame(sdb_data, gender == 0)


## scatter plots

plot(data$reading.score, data$writing.score, 
     main = "relationship between reading and writing score", 
     xlab = "reading score", 
     ylab = "writing score")
abline(reg = lm(data$reading.score ~ data$writing.score))

plot(data$math.score, data$writing.score, 
     main = "relationship between reading and writing score", 
     xlab = "math score", 
     ylab = "writing score")
abline(reg = lm(data$math.score ~ data$writing.score))
abline(a = 0, b = 1)
## histograms models 

hist(data$math.score, breaks = 10) 
hist(data$reading.score, breaks = 10) 
hist(data$writing.score, breaks = 10) 

## linear models 

linear_model <- lm(formula = reading.score ~ writing.score, data = data)
summary(linear_model)

linear_model <- lm(formula = reading.score ~ writing.score, data = data)
summary(linear_model)

