install.packages("lattice")
library(lattice)
data <- read.csv("C:/Users/praka/OneDrive/Documents/SEM2/Big data/Assignment_1/Placement_Data_Full_Class.csv")
print(data)

histogram(~ssc_p|gender,data=data)
histogram(~hsc_p|gender,data=data)
histogram(~degree_p|gender,data=data)

histogram(workex~salary|status,data=data)

xyplot(degree_p~salary|gender,data=data)

colnames(data)

