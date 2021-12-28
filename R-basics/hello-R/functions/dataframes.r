head(mtcars)
tail(mtcars)
str(mtcars)
summary(mtcars)
dim(mtcars)
nrow(mtcars)
ncol(mtcars)

any(is.na(mtcars))

positions <- order(mtcars$mpg, decreasing = TRUE)
print(positions)

mtcars[positions, ]
