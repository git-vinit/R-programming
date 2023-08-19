
library(rvest)

# URL of the IMDb calendar page you want to scrape
url <- "https://www.imdb.com/calendar/?ref_=nv_mv_cal"

# Read the HTML content of the webpage
page <- read_html(url)

# Extract the movie titles and release dates
movie_titles <- page %>%
html_nodes("ipc-title__text") %>%
html_text()

release_dates <- page %>%
html_nodes(" ipc-title__text.h3") %>%
html_text()



# Combine the titles and release dates into a data frame
scraped_data <- data.frame(Movie_Title = movie_titles, Release_Date = release_dates)

# Print the scraped data
print(scraped_data)
