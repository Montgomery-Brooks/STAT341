#Author: Montgomery; Date: 09/23/2025; Purpose: Test ANOVA


install.packages("dplyr")

library(dplyr)

#Read DUMMY set

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Load the data poisons.csv

df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE)) 

#Call first amount of samples

head(df)

 time poison treat
1 0.31      1     A
2 0.45      1     A
3 0.46      1     A
4 0.43      1     A
5 0.36      2     A
6 0.29      2     A


#Plot data set
library(ggplot2)

ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

anova_one_way <- aov(time~poison, data = df) 
summary(anova_one_way)

#Output

Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

