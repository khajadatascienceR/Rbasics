# Construct a matrix with 3 rows that contain numbers from 1 to 9
basic_matrix <- matrix(1:9, byrow = FALSE, nrow=3)
print(basic_matrix)

raise_of_skywalker <- c(515.202, 1072.848)
solo <- c(213.767, 393.151)
last_jedi <- c(620.181, 1055.135)

box_office <- c(raise_of_skywalker, solo, last_jedi)

star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow=3)
print(star_wars_matrix)

regions <- c("US", "Worldwide")
movies <- c("Raise of Skywalker", "Solo", "Last Jedi") 

colnames(star_wars_matrix) <- regions
rownames(star_wars_matrix) <- movies

print(star_wars_matrix)

rowSums(star_wars_matrix)

all_collections <- cbind(star_wars_matrix, rowSums(star_wars_matrix))
print(all_collections)



