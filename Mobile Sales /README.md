# Mobile Sales Analysis

This project focuses on analyzing mobile sales data to derive insights into customer behavior, sales performance, and brand preferences. The analysis is performed using SQL and R, leveraging data manipulation and visualization techniques.

## Project Structure

The project is organized into the following directories:

- **Analysis/Sql/**: Contains SQL scripts for querying and analyzing the sales data.
  - `brand_model_sales_by_agegroup.sql`: Analyzes sales performance by brand and model across different age groups.
  - `sales_performance_by_month.sql`: Calculates the percentage change in sales performance by month.
  - `pricing_preference_by_age_group.sql`: Identifies price range preferences by customer age groups.

- **Analysis/R/**: Contains R scripts for data analysis and visualization.
  - `top_3_brands_by_age_group.r`: Identifies the top 3 mobile brands preferred by each age group.
  - `sales_performance_by_month.R`: Translates the SQL logic for monthly sales performance into R.
  - `pricing_preference_by_age_group.R`: Translates the SQL logic for price range preferences into R.

## Prerequisites

To run the analysis, ensure you have the following installed:

- **R**: Version 4.0 or higher
- **R Libraries**:
  - `dplyr`: For data manipulation
  - `lubridate`: For date handling
- **SQL Database**: A database containing the `sales` table with the following columns:
  - `transaction_date`: Date of the transaction
  - `customer_age_group`: Age group of the customer
  - `mobile_brand`: Brand of the mobile device
  - `mobile_model`: Model of the mobile device
  - `units_sold`: Number of units sold
  - `price`: Price of the mobile device

## How to Run

### SQL Analysis
1. Open the SQL scripts in your preferred SQL editor.
2. Execute the scripts against the database containing the `sales` table.

### R Analysis
1. Open the R scripts in RStudio or any R editor.
2. Load the sales data into a data frame (e.g., using `read.csv()`).
3. Run the scripts to generate insights.

## Key Insights

1. **Brand and Model Preferences**:
   - Identifies the most popular brands and models for each age group.

2. **Sales Performance**:
   - Tracks monthly sales performance and calculates percentage changes.

3. **Pricing Preferences**:
   - Highlights the preferred price ranges for customers across different age groups.

## Future Enhancements

- Add data visualizations for better insight representation.
- Automate data extraction and transformation processes.
- Expand analysis to include regional sales trends.



