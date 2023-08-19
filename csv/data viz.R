re = read.csv("C:/Users/Admin/OneDrive/Desktop/itvedant/r proframin/csv/twitter.csv")
re
print(ncol(re))
print(nrow(re))
min_1=min(re$id)
print(min_1)
max_1=max(re$id)
print(max_1)

#ozone,solar,temprature,month,date

# Create a sample dataframe
data <- data.frame(
  date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-02-01", "2023-02-02")),
  month = c(1, 1, 1, 2, 2),
  ozone = c(25, 30, 28, 35, 40),
  solar = c(120, 150, 135, 200, 220),
  temperature = c(10, 12, 11, 15, 16)
)

# Print the dataframe
print(data)

barplot(data$ozone,col=c("blue","yellow","green","pink","red"),  main =simplebarplo )

row_names=c("sub","mark","grd","format")
col_names=c("cl","c2","c3")
r=matrix(c(3:14),nrow=4,byrow=TRUE,dimnames = list(row_names,col_names))
r
print(R[2,])


re = read.csv("C:/Users/Admin/OneDrive/Desktop/itvedant/r proframin/csv/Walmart.csv")
re
plot(re$Weekly_Sales,re$Fuel_Price,xlab = "Weeklysales" , ylab = "fuel price")
barplot(re$Weekly_Sales,re$Fuel_Price,xlab = "Weeklysales" , ylab = "fuel price" )
hist(re$Weekly_Sales,xlab = "Weeklysales"  )
w=c(10,20,30,40,50,60,70)
labels=c('indore','kolkata','pune','banglore','mumbai')
pie(w,labels)
rr=head(re)
rr
pie(rr$Temperature,labels = rr$Fuel_Price)
plot(rr$Temperature,type ="o")


R<-c("apple","banana","cherry","mango")
R
length
for (i in R){
  print(i)
}



