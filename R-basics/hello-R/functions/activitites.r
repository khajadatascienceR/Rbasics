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
