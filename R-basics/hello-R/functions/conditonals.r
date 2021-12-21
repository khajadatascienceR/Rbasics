x <- 100

if (x > 10) {
  print("x is greater than 10")
} else {
  print("x is less than 10")
}

average_marks <- mean(c(100,90,70,80,77,60))

if (average_marks > 90) {
  print("A+")
} else if (average_marks > 80) {
  print("A")
} else if (average_marks > 70) {
  print("B+")
} else if (average_marks > 60) {
  print("B")
} else {
  print("C")
}
