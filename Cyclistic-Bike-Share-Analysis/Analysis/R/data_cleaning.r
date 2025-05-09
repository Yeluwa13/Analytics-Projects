# Cleaning the dataset by filtering null values
df <- df[!is.na(df$column_name), ]
# Convert duration to numeric type
df$duration <- as.numeric(df$duration) 
 