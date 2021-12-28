gender_vector <- c("Male", "Female", "Female", "Male", "Female", "Male")

factor_gender_vector <- factor(gender_vector)
print(factor_gender_vector)


# nominal
fruits_vector <- c("Apple", "Banana", "Mango")
factor_fruits_vector <- factor(fruits_vector)
print(factor_fruits_vector)

# ordinal
bp_vector <- c("High", "Low", "Normal", "High", "Low", "High")

factor_bp_vector <- factor(bp_vector, ordered=TRUE, levels = c("Low", "Normal", "High"))
print(bp_vector)
print(factor_bp_vector)

levels(factor_fruits_vector)
levels(factor_bp_vector)

levels(factor_fruits_vector) <- c("Apple", "Banana", "Mango", "Orange")
print(factor_fruits_vector)

summary(fruits_vector)
summary(factor_fruits_vector)

summary(bp_vector)
summary(factor_bp_vector)



