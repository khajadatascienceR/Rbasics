library(tidyverse)
library(nycflights13)
transmute(flights,
          gain = arr_delay - dep_delay,
          speed = distance/air_time * 60)
summarize(flights)
summarize(flights, delay = mean(dep_delay, na.rm=TRUE))

by_day <- group_by(flights, year, month, day)
summarize(by_day, delay = mean(dep_delay, na.rm = TRUE))


library(magrittr)

delays <- flights %>% 
  group_by(year, month, day) %>%
  summarize(delay = mean(dep_delay, na.rm = TRUE))
print(delays)



delays_by_dest <- flights %>%
  group_by(dest) %>%
  summarize(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  )
print(delays_by_dest)


not_cancelled <- flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay))

not_cancelled %>%
  group_by(month) %>%
  summarise(arr_delay_avg = mean(arr_delay),
            dep_delay_avg = mean(dep_delay))

delays <- not_cancelled %>%
  group_by(tailnum) %>%
  summarize(delay = mean(arr_delay))

ggplot(data = delays, mapping = aes(x = delay)) +
  geom_freqpoly(binwidth = 10)

delays <- not_cancelled %>%
  group_by(tailnum) %>%
  summarize(delay = mean(arr_delay),
            n = n())

ggplot(data = delays, mapping = aes(x=n, y= delay)) +
  geom_point()


not_cancelled %>%
  group_by(dest) %>%
  summarize(distance_sd = sd(distance, na.rm = TRUE)) %>%
  arrange(desc(distance_sd))

not_cancelled %>%
  group_by(dest) %>%
  summarize(distance_median = mad(distance, na.rm = TRUE)) %>%
  arrange(desc(distance_median))



daily <- flights %>%
  group_by(year, month, day)

per_day <- daily %>%
  summarize(flights = n())
print(per_day)

per_month <- per_day %>%
  summarize(flights = sum(flights))

per_year <- per_month %>%
  summarize(flights = sum(flights))
