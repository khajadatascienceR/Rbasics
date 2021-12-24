check.even <- function(n){
  if (n >=0 ){
    is_even <- (n %% 2 == 0)
    
  }else {
    print("invalid")
    is_even <- NULL
  }
  is_even
}

check.even(4)

check.even(3)

use.switch <- function(n) {
  switch (n,
    "a" = "first",
    "b" = "second",
    "other"
  )
}

use.switch("a")
use.switch("b")
use.switch(NULL)
use.switch("c")
