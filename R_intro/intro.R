# Food = b1 + b2*Income
fooddata <- read.csv("food.txt")
library(tidyverse) ## to load the tidyverse package
# Draw histogram graphs and scatterplot + regression
ggplot(fooddata, aes(x = income)) +
  geom_histogram(bins=12)
ggplot(fooddata, aes(x = food)) +
  geom_histogram(bins=12)
ggplot(fooddata, aes(x = income, y = food)) +
  geom_point()
ggplot(fooddata, aes(x = income, y = food)) +
  geom_point() +
  geom_smooth(method = "lm")
# Simple linear regression 
simple_model <- lm(food ~ income, data=fooddata)
summary(simple_model)
anova(simple_model)
# Create new variables and run multiple regression
fooddata_new <- mutate(fooddata, income2 = income^2)
multi_model <- lm(food ~ income + income2, data=fooddata_new)
summary(multi_model)
anova(multi_model)



