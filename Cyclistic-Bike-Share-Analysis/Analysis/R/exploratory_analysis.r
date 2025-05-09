# Grouping and summarizing data based on user type
user_summary <- aggregate(duration ~ user_type, data = df, FUN = mean)
 