# Creating a bar plot of ride counts by user type
library(ggplot2)
ggplot(df, aes(x = user_type)) +
geom_bar() +
labs(title = "Ride Counts by User Type", x = "User Type", y = "Count of Rides")
 