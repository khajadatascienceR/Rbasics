for (index in 1:10) {
  print(index)
}
print(1:10)

fruits <- c("apple", "mango", "orange")
for (fruit in fruits) {
  print(fruit)
}

index <- 1
while (index <= length(fruits)) {
  print(fruits[index])
  index <- index + 1
}