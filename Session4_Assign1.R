# #df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
# df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
# df1 #left table
# df2 #right table
# For the above given data frames and tables perform the following operations:
#   . Return only the rows in which the left table have match.
# . Returns all rows from both tables, join records from the left which have matching keys
# in the right table.
# . Return all rows from the left table, and any rows with matching keys from the right
# table.
# . Return all rows from the right table, and any rows with matching keys from the left
# table.
# 
# 2. Perform the below operations on above given data frames and tables:
#   
#   . Return a long format of the datasets without matching key.
# . Keep only observations in df1 that match in df2.
# . Drop all observations in df1 that match in df2.
library(dplyr)
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df1
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df2
fullOuter <- merge(x = df1, y = df2, all.y = TRUE, all.x = TRUE)
fullOuter
leftOuter<- merge(x = df1, y = df2, by = "CustId", all.x = TRUE)
leftOuter
rightOuter<-merge(x = df1, y = df2, by = "CustId", all.y = TRUE)
rightOuter

ans1 <-na.omit(leftOuter)
ans1
ans2 <- filter(leftOuter,!is.na(leftOuter$State))
ans2
ans3 <- filter(leftOuter,is.na(leftOuter$State))
ans3


