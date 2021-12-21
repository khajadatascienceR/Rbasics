hello_world <- function()
{
  print("Hello world")
}
hello_world()

say_hello <- function(name)
{
  sprintf("Hello %s", name)
}

say_hello('Khaja')
say_hello('Arundhati')

say_hello_again <- function(first, last)
{
  sprintf("Hello %s %s", first, last)
}
say_hello_again('Harish', 'Vanka')
say_hello_again(last = 'Sharma', first = 'Nikhil')
say_hello_again(last = 'Devella', 'Padmavathi')


say_hello_again <- function(first, last, middle="")
{
  sprintf("Hello %s %s %s", first, last, middle)
}

say_hello_again('pavan', 'gandhari')

say_hello_again('Ram', 'Reddy', 'M')


person_info <- function(first, last, ...)
{
  print(ls())
  print(...)
}

person_info('test', 'test0')











