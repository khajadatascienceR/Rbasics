library(tidyverse)
install.packages('gapminder')
library(gapminder)

gapminder::gapminder %>% filter(lifeExp < 29)

gapminder::gapminder %>% filter(country %in% c("Afghanistan", "Rwanda"))


