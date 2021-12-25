empty_df <- data.frame()
print(empty_df)


employee_1 <- c('Ironman', 'Marketing', 40, 107.8)
employee_df <- rbind(empty_df, employee_1)

employee_2 <- c('Thor', 'Sales', 40, 100)
employee_df <- rbind(employee_df, employee_2)
print(employee_df)

colnames(employee_df) <- c("name", "dept", "hours per week", "hourly pay")
print(employee_df)

print(str(employee_df))

employee_ids <- c(1L, 2L)
employee_df <- cbind(employee_df, employee_ids)
print(str(employee_df))


new_employee_df <- subset(employee_df, select= -c(name, dept))
print(new_employee_df)

new_employee_df_2 <- employee_df[!(names(employee_df) %in% c("dept", "hours per week"))]


