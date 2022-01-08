library(tidyverse)
library(stringr)

string1 <- "This is a Sample String"
string2 <- 'This is an example with a "double quote" inside single quote'
print(string2)

colors <- c("Red", "Green", "Blue")
writeLines(colors)

str_length(colors)

more_colors = c("Violet", "Indigo", "Yellow", "Orange")


rainbow <- c(colors, more_colors)
print(rainbow)

str_c("rainbow", "test", sep = ",")

colors_with_na <- c("Yellow", NA)
colors_with_na
str_c("---->",str_replace_na(colors_with_na, replacement = "<NOTHING>"), "<-------")


fruits <- c("Apple", "Banana", "Mango")
fruits %>%
  str_sub(1,3)

fruits %>%
  str_sub(-3, -1)

# convert to lower, upper and title
str_to_upper(c("i", "l"))

# https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
str_to_upper(c("i", "l"), locale = "az")


# Matching patterns with Regular Expressions
install.packages("htmlwidgets")
library(htmlwidgets)
print(fruits)
# matches an any where
fruits %>%
  str_view('an')

# start with A
fruits %>%
  str_view('^A')

fruits %>%
  str_view('.a.')
#ends with o
fruits %>%
  str_view('o$')
# refer here for regular expressions https://regexr.com/

# all the fruits starting with a
fruit %>%
  str_detect('^a')

# to get items
fruit[str_detect(fruit, '^a')]

fruit[str_detect(fruit, 'a$')]

fruit[str_detect(fruit, '^s.*y$')]


df <- tibble(
  fr = fruit,
  i = seq_along(fr)
)

df %>%
  filter(str_detect(fruit, '^s.*y$'))

# count the occurances in each element
fruit
str_count(fruit, "a")

# which have vowels
fruit %>%
  str_count("[aieou]")

# which are not vowels
fruit %>%
  str_count("[^aieou]")


# Replace pattern with any string
fruit %>%
  str_replace("[aeiou]", "_")

fruit %>%
  str_replace_all("[aeiou]", "_")

# splitting strings into list

sentences %>%
  head(5) %>%
  str_split(" ")

sentences %>%
  head(5) %>%
  str_split(" ", simplify = TRUE)


