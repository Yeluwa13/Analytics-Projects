# Load necessary library
library(dplyr)

# Query the data frame containing the sales data
top_brands <- sales %>%
  group_by(customer_age_group, mobile_brand, mobile_model) %>%
  summarise(purchases = sum(units_sold, na.rm = TRUE), .groups = "drop") %>%
  arrange(customer_age_group, desc(purchases)) %>%
  group_by(customer_age_group) %>%
  mutate(ranking = row_number()) %>%
  filter(ranking <= 3) %>%
  arrange(customer_age_group, ranking)

# View the summarized data
print(top_brands)