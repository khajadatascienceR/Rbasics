library(tidyverse)
install.packages('forcats')
library(forcats)

months1 <- c("Dec", "Apr", "Jan", "Mar")
sort(months1)
month_levels <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
                  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

# Creating a factor 
month_factor <- factor(months1, levels = month_levels)
sort(month_factor)


months2 <- c("Dec","Apr", "Jam", "Mar")
# Converting this to factors
m2_factors <- factor(months2, levels = month_levels)
print(m2_factors)

# if you want error if the data is not matching
m2_factors <- parse_factor(months2, levels = month_levels)
print(m2_factors)


View(forcats::gss_cat)
glimpse(forcats::gss_cat)

gss_cat %>%
  count(race)

ggplot(gss_cat, aes(race)) +
  geom_bar()

religion_summary <- gss_cat %>%
  group_by(relig) %>%
  summarize(
    age = mean(age, na.rm=TRUE),
    tvhours = mean(tvhours, na.rm=TRUE),
    n = n()
  )
print(religion_summary)


religion_summary %>%
  ggplot(aes(tvhours, relig)) + geom_point()

rincome_summary <- gss_cat %>%
  group_by(rincome) %>%
  summarize(
    age = mean(age, na.rm=TRUE),
    tvhours = mean(tvhours, na.rm=TRUE),
    n = n()
  )
print(rincome_summary)

rincome_summary %>%
  ggplot(aes(age, fct_reorder(rincome, age))) +
  geom_point()

religion_summary %>%
  ggplot(aes(tvhours, fct_reorder(relig,tvhours))) + geom_point()

by_age <- gss_cat %>%
  filter(!is.na(age)) %>%
  group_by(age, marital) %>%
  count() %>%
  mutate(percent = n /sum(by_age$n))
print(by_age)

by_age %>%
  ggplot(aes(age, percent,color=marital )) +
  geom_line(na.rm = TRUE)


gss_cat %>%
  mutate(marital = marital %>% fct_infreq() %>% fct_rev()) %>%
  ggplot(aes(marital)) +
  geom_bar()

gss_cat %>%
  mutate(marital = marital) %>%
  ggplot(aes(marital)) +
  geom_bar()


gss_cat %>% count(partyid)

gss_cat %>% 
  mutate(
    partyid = fct_recode(partyid,
      "Republican, Strong" = "Strong republican",
      "Republican, Weak"   = "Not str republican",
      "Independent, near Republican" = "Ind,near rep",
      "Independent, near Democrat" = "Ind,near dem",
      "Democrat, Weak" = "Not str democrat",
      "Democrat, Strong" = "Strong democrat"
    )
  ) %>%
  count(partyid)



gss_cat %>%
  mutate(partyid = fct_collapse(partyid,
        other=c("No answer", "Don't know", "Other party"),
        rep = c("Strong republican", "Not str republican"),
        ind = c("Ind,near dem", "Ind,near rep", "Independent"),
        dem = c("Strong democrat", "Not str democrat")
          )
        ) %>% count(partyid)












  
