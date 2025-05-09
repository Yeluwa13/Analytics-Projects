# Load necessary library
library(dplyr)

# Query the data frame containing the sales data
pricing_preference <- sales %>%
  mutate(
    price_range = case_when(
      price < 600 ~ "budget (<$600)",
      price >= 600 & price <= 1199 ~ "mid-range ($600–$1199)",
      price >= 1200 ~ "premium (≥$1200)"
    )
  ) %>%
  group_by(customer_age_group, price_range) %>%
  summarise(total_customers = n(), .groups = "drop") %>%
  arrange(customer_age_group, desc(total_customers)) %>%
  group_by(customer_age_group) %>%
  mutate(ranking = row_number()) %>%
  filter(ranking == 1) %>%
  arrange(customer_age_group)

# View the summarized data
print(pricing_preference)