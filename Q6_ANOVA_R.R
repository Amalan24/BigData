install.packages("dplyr")
library(dplyr)
Group1 <- c(6,7,3,8)
Group2 <- c(5,5,3,7)
Group3 <- c(5,4,3,4)

# Combine the groups into a single data frame
data <- data.frame(Group = rep(c("Group1", "Group2", "Group3"), each = 4),
                   Value = c(Group1, Group2, Group3))

print(data)
# Perform one-way ANOVA
result <- aov(Value ~ Group, data = data)

# Print the ANOVA table
print(summary(result))
