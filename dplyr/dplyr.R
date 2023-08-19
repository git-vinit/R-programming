library(dplyr)
# Create a data frame
data <- data.frame(
  listing_id = c(1, 2, 3, 4, 5),  # Example listing IDs
  city = c("New York", "Los Angeles", "London", "Paris", "Tokyo"),  # Example cities
  country = c("USA", "USA", "UK", "France", "Japan"),  # Example countries
  year_listed = c(2020, 2019, 2021, 2018, 2022),  # Example years listed
  price = c(1500, 1200, 1000, 1800, 2000)  # Example prices
)

# Print the data frame
print(data)

data%>%select(listing_id,city)
data%>%select(starts_with("c "))
data%>%select(ends_with("d"))
data%>%select(country:year_listed)
data%>%relocate(country,city)
data%>%rename(year=year_listed)
data%>%select(matches("(.c.)|(c.)"))
data%>%mutate(time=2022-year_listed)
data%>%transmute(full_address=paste(city,country))
data%>%filter(country=="USA")
data%>%filter(country=="Japan" | price>3000)
data%>%filter(country=="Japan" & price>3000)
data%>%filter(country=="Japan" %in% 4000)
data%>%slice(1:3)
data%>%arrange( )
data%>%filter(desc(price))
data%>%distinct(city)
data%>%top_n(3,price)
