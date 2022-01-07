library(tidyverse)
library(magrittr)
table1
table2
table3
table4a
table4b

# Compute rate for every 10,000 people
table1 %>% 
  mutate(rate = cases/population * 10000)

table4a
tab4a <- table4a %>%
  gather(`1999`, `2000`, key = "year", value = "cases")

table4b
# Gather this into tidy form with year and population
tab4b <- table4b %>%
  gather(`1999`, `2000`, key="year", value = "population")

left_join(tab4a, tab4b)



table2
table2 %>%
  spread(key=type, value=count)


stocks <- tibble(
  year = c(2015,2015, 2016,2016),
  half = c(1,2,1,2),
  return = c(1.88, 0.59, 0.92, 0.17)
)

stocks %>%
  spread(year, return) %>%
  gather("year", "return", `2015`:`2016`)

table3

table3 %>%
  separate(rate, into=c("cases", "population"), sep = "/")

table3 %>%
  separate(rate, into=c("cases", "population"), sep = "/", convert = TRUE)

table3 %>%
  separate(year, into=c("century", "year"), sep = 2, convert = TRUE)

table3 %>%
  separate(year, into=c("century", "year"), sep = 2)


table5

table5 %>%
  unite(new, century, year)

who
glimpse(who)

who1 <- who %>%
  gather(
    new_sp_m014:newrel_f65, 
    key= "variant", 
    value="cases", 
    na.rm = TRUE)
print(who1)

who2 <- who1 %>%
  mutate(
    variant=stringr::str_replace(variant, "newrel", "new_rel"))
who2

who3 <- who2 %>%
  separate(variant, c("new", "type", "sexage"), sep="_")
print(who3)

who4 <- who3 %>%
  select(-new, -iso2, -iso3)
print(who4)

who5 <- who4 %>%
  separate(sexage, c("sex", "age"), sep=1)
print(who5)

who

who6 <- who %>%
  gather(code, value, new_sp_m014:newrel_f65, na.rm = TRUE) %>%
  mutate(code = stringr::str_replace(code, "newrel", "new_rel")) %>%
  separate(code, c("new", "variant", "sexage"), sep="_") %>%
  select(-new, -iso2, -iso3) %>%
  separate(sexage, c("sex", "age"), sep=1) %>%
  mutate(age = stringr::str_replace(age, "014", "0014")) %>%
  mutate(age = stringr::str_replace(age, "65", "65118")) %>%
  separate(age, c("starting_age", "end_age"), sep = 2, convert = TRUE)


