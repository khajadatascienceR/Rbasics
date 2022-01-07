library(tidyverse)
library(nycflights13)

airlines

airports

planes

weather

flights


planes %>%
  count(tailnum) %>%
  filter(n > 1)


flights %>%
  count(tailnum) %>%
  filter(n > 1)


# Mutating Joins

flights2 <- flights %>%
  select(year:day, hour, origin, dest, tailnum, carrier)
flights2

airlines

flights2 %>%
  left_join(airlines, by="carrier")


flights2

weather

View(airports)

flights2 %>% left_join(weather)

flights2 %>% left_join(planes, by="tailnum")


flights2 %>% left_join(airports, c("dest"="faa"))

flights2 %>% left_join(airports, c("origin"="faa"))


# Filtering Joins

# find top 10 destinations
top_dest <- flights %>%
  count(dest, sort=TRUE) %>%
  head(10)

# using filter
flights %>%
  filter(dest %in% top_dest$dest)

# using semi_join
flights %>%
  semi_join(top_dest)


flights %>%
  anti_join(planes, by= "tailnum") %>%
  count(tailnum, sort = TRUE)


df1 <- tribble(
  ~x, ~y,
  1, 1,
  2, 1
  
)
df2 <- tribble(
  ~x, ~y,
  1, 1,
  1,2
)
intersect(df1, df2)
union(df1, df2)
setdiff(df1, df2)
