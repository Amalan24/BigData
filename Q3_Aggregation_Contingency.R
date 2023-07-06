data <- data.frame(
  Person = c(1, 2, 3, 4, 5),
  Gender = c("Male", "Female", "Male", "Male", "Female"),
  Employed = c("Yes", "No", "Yes", "No", "Yes"),
  Percent = c(94, 88, 91, 80, 89)
)

print(data)

#Contingency table

con1_table <- table(data$Gender, data$Employed)
con1_table <- addmargins(con1_table)

print(con1_table)

library(dplyr)
library(tidyr)

data <- data.frame(
  Person = c(1, 2, 3, 4, 5),
  Gender = c("Male", "Female", "Male", "Male", "Female"),
  Employed = c("Yes", "No", "Yes", "No", "Yes"),
  Percent = c(94, 88, 91, 80, 89)
)


contingency_table <- data %>%
  group_by(Gender, Employed) %>%
  summarise(Average_Percent = mean(Percent)) %>%
  pivot_wider(names_from = Employed, values_from = Average_Percent)

print(contingency_table)




#Aggregation

mean_percent <- mean(data$Percent)
print(mean_percent)

max_percent <- max(data$Percent)
min_percent <- min(data$Percent)

print(max_percent)
print(min_percent)

