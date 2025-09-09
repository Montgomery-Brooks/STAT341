#Author: Montgomery Brooks; Date: 09/04/2025; Purpose: Test the correlation

if(!require(devtools)) install.packages("devtools") ;devtools::install_github("kassambara/ggpubr");

# Load the library ggpubr
library (ggpubr)

# Load Dummy Dataset
my_data <- mtcars 

# Print the first few lines
head(my_data, 6)

# Hypothesis: Weight of the car is inversely porortional to the mpg of the car

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")
res

  Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 
