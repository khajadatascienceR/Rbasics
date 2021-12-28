movies <- c("New Hope:1977", "The Empire Strikes Back:1980", "Return of the Jedi:1983")

split <- strsplit(movies, split = ":")
print(split)

split_movies_lower <- tolower(movies)
print(split_movies_lower)


split_movies_lapply <- lapply(movies, strsplit, split=":")
print(split_movies_lapply)

split_movies_sapply <- sapply(movies, strsplit, split=":")
print(split_movies_sapply)


select_first <- function(x) {
  x[1]
}
select_nth <- function(x, n) {
  x[n]
}

split <- strsplit(movies, split = ":")
print(split)

split_low <- lapply(split, tolower)
print(split_low)

first_items <- lapply(split_low, select_first)
print(first_items)

second_items <- lapply(split_low, select_nth, n=2)
print(second_items)



listA <- list(c(1,2,3,4,5,6,7),c(5,23,6,3,8,5,9,2,6),c(6,67,87,54,34,56))
lapply(listA, mean)

lapply(listA, function(x) { mean(x)^2})

lapply(listA, function(x) {
  if (mean(x) < 5 ) {
    return(NULL)
  }
  return(mean(x))
})

x <-100
extreme_avg <- function(...){
  y=list(...)
  sum(...)
  lapply(y, mean)
  
}

extreme_avg(c(1:100),c(200:300))


