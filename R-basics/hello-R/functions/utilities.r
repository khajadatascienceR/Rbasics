seq1 <- seq(from=1, to=500, by=3)
seq2 <- seq(from=1500, to=1000, by=-7)
sum(seq1, seq2)

emails <- c("qt@gmail.com", "qt@qt.com", "qt@live.in", "qt@qt.org", "qt@qt.edu")
grepl("com", emails)
grep("com", emails)

print(emails[grep("com", emails)])
library(magrittr)
myindex <- function(n, vec) {
  vec[n]
}

grep("com", emails) %>% myindex(vec=emails)

emails <- c("qt@gmail.com", "qt@qt.com", "qt@live.in", "qtqt.org", "qt@qtedu")
# print only valid email ids
print(emails[grep("^[a-zA-Z0-9_.-]+@[a-zA-Z0-9]+\\.[a-zA-z]+",emails)])


emails <- c("qt@gmail.com", "qt@test.edu", "qt@live.in", "qt@qt.org", "qt@qt.edu")
sub("edu", "education", emails)
gsub("edu", "education", emails)


str1 <- "August 15, 1947"

date1 <- as.Date(str1, format="%B %d, %Y")
print(date1)

str2 <- "2012-27-05"
date2 <- as.Date(str2, format="%Y-%d-%m")
print(date2)


str3 <- "April 2, 11 hours:09 minutes:45 seconds:30 pm"
time3 <- as.POSIXct(str3, format="%B %d, %y hours:%I minutes:%M seconds:%S %p")
print(time3)

