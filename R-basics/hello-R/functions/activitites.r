is.prime <- function(number) {
  if (number >= 2){
    # finding the numbers to check 
    all_numbers <- 2:(number-1)
    mod_results <- number%%all_numbers
    if (any(mod_results == 0)){
      return(FALSE)
    }
    else {
      return(TRUE)
    }
  }
}

prime_numbers <- function(numbers) {
  results <- c()
  for (number in numbers){
    if(is.prime(number) == TRUE) {
      results <- append(results, number)
    }
  }
  return(results)
}

prime_numbers(100:1000)

# find the nth highest value
nth.highest <- function(numbers, n) {
 return (sort(numbers, decreasing = TRUE)[n])
}


values <- c(100,45,23,34,46,57,102)
nth.highest(values, 3)
nth.highest(values,2)

# removing NA items from vector
remove.na <- function(values) {
  return(values[!is.na(values)])
}

prices <- c(30.5, 31.5, NA, 30.5, 30.74, NA, 31)

prices <- remove.na(prices)
prices

items <- c("apples", "oranges", "mangoes", "banana", "apples", "oranges", "mangoes", "banana", "apples", "oranges", "mangoes", "banana")

filter_by <- c("apples", "mangoes")

items[ items %in% filter_by]


coin.filp <- function(size=1) {
  return(sample(c("H", "T"), replace = TRUE, prob = c(0.5, 0.5), size = size))
}

coin.filp(100)
coin.filp()








