vec1 <- c(1.5,2.5,8.4, 3.7, 6.3)
vec2 <- rev(vec1)

combcombined <- abs(vec1)combined <- abs(vec1) abs(vec2)

mean(combined)

list1 <- list(16,9,14,5,3,18,13)

list2 <- list(17,8,6,2,13,16)

# convert list1 to vec1
vec1<- unlist(list1)
vec2 <- unlist(list2)


list3 <- list(c(17,8),c(6,2),c(13,16))
unlist(list3)


my_mean <- function(...) {
  elements <- unlist(list(...))
  mean(elements)
}

my_mean(c(1,2),c(3,4),c(5,6))
list4 <- list(c(17,8),c('6A','2'),c('13','16'))
unlist(list4)

sapply(unlist(list4), function(x) {
  as.numeric(x)
})

