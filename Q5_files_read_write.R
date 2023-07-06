install.package("xlsx")
library("xlsx")
df1 <- data.frame(Name= c("Mani","Murali"),Age=c(21,20),Roll.no = c("2022178044","2022178045"),Native=c("Salem","Coimbatore"))
write.xlsx(df1,"C:/Users/praka/OneDrive/Documents/SEM2/Big data/Assignment_1/Q5_Sample.xlsx")

read_data <- read.xlsx("C:/Users/praka/OneDrive/Documents/SEM2/Big data/Assignment_1/Q5_Sample.xlsx", sheetIndex=1)
print(read_data)

