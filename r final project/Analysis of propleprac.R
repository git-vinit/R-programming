library(DBI)
library(RMySQL)  
library(dplyr)
con <- dbConnect(MySQL(),
                 user = "root",
                 password = "vinit123",
                 dbname = "peopleprac",
                 host ="localhost")
sql_query <- "SELECT * FROM employees"
people_practice <- dbGetQuery(con,sql_query)
data_frame <- as.data.frame(people_practice)
data_frame
nrow(data_frame)
sum(data_frame$salary)
data_frame%>%distinct(salary)
data_frame%>%select(first_name,last_name,department_id)
data_frame%>%filter(department_id=="9")
# Create a barplot with labeled axes
barplot(
  data_frame$salary,                            # Values to be plotted
  names.arg = data_frame$department_id,            # Category labels for x-axis
  main = "Barplot Example",               # Title of the plot
  xlab = "department",                    # Label for the x-axis
  ylab = "salary",                        # Label for the y-axis
  col = "steelblue",                      # Bar color
  border = "black",                      # Border color of bars
  ylim = c(0, max(data_frame$salary) + 10)      # Set y-axis limits
)
# Create a scatterplot
plot(
  data_frame$department_id,               # x-axis values (department IDs)
  data_frame$salary,                     # y-axis values (salaries)
  main = "Scatterplot Example",           # Title of the plot
  xlab = "Department",                   # Label for the x-axis
  ylab = "Salary",                       # Label for the y-axis
  col = "steelblue",                     # Point color
  pch = 16,                              # Point shape (16: solid circle)
  xlim = c(0, max(data_frame$department_id) + 1),   # Set x-axis limits
  ylim = c(0, max(data_frame$salary) + 10000)       # Set y-axis limits
)
# Create a boxplot
boxplot(data_frame$salary, main="boxplot")
# Calculate the frequency of each department
department_counts <- table(data_frame$department_id)
# Create a pie chart
pie(
  department_counts,                                  # Frequency of departments
  labels = paste(names(department_counts), " (", department_counts, ")", sep = ""),  # Labels for each slice
  main = "Pie Chart: Salary Distribution by Department",  # Title of the plot
  col = rainbow(length(department_counts)),               # Colors for slices
  border = "white"                                     # Border color of slices
)
# Load the necessary library (if not already loaded)
library(ggplot2)

# Create a line chart
ggplot(data_frame, aes(x = department_id, y = salary)) +
  geom_line() +
  labs(title = "Line Chart: Salary Distribution by Department",
       x = "Department",
       y = "Salary")




