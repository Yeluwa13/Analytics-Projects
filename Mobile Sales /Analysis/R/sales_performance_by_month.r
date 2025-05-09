# Load necessary libraries
library(dplyr)
library(lubridate)

# Query the data frame containing the sales data
sales_performance <- sales %>%
  mutate(
    transaction_date = dmy(transaction_date), # Convert date to Date format
    transaction_month = month(transaction_date, label = TRUE, abbr = FALSE), # Extract month name
    month_order = month(transaction_date) # Extract numeric month for ordering
  ) %>%
  group_by(month_order, transaction_month) %>%
  summarise(current_month_sales = sum(units_sold, na.rm = TRUE), .groups = "drop") %>%
  arrange(month_order) %>%
  mutate(
    previous_month_sales = lag(current_month_sales), # Get previous month's sales
    percentage_change = ifelse(
      is.na(previous_month_sales) | previous_month_sales == 0,
      NA,
      round((current_month_sales - previous_month_sales) / previous_month_sales * 100, 2)
    )
  )

# View the summarized data
print(sales_performance)