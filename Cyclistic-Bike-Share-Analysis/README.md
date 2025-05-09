# Cyclistic Bike Share Analysis

This project analyzes usage patterns of Cyclistic’s bike-sharing business, focusing on differences between casual riders and annual members. The primary objective is to derive actionable insights that can inform marketing strategies aimed at converting casual riders into annual members, thereby increasing long-term revenue and customer retention.

## Objective

The analysis aims to understand how casual riders differ from annual members in their usage of Cyclistic bikes. These insights will guide targeted marketing efforts to encourage casual riders to become annual members.

## Business Requirements

- Identify key differences in usage patterns between casual riders and annual members.
- Provide actionable insights to support marketing strategies for converting casual riders into annual members.

## Timeframe

The analysis is based on Cyclistic bike-sharing data from **January to July 2024**.

## Data Cleaning and Preparation

The following steps were undertaken to ensure data quality and usability:
- Removed duplicate records to maintain data integrity.
- Dropped rows with missing or incomplete information.
- Transformed the `ride_length` column into a usable format.
- Converted `started_at` and `ended_at` columns from text to proper datetime format for accurate time-based analysis.

## Key Questions Explored

1. What is the average ride duration for casual riders compared to annual members?
2. Which bike types are most frequently used by casual riders?
3. What days of the week see the highest ride activity for each group?
4. What are the most popular start and end stations for casual riders?
5. During which months are casual rides most frequent?
6. What times of day do casual riders typically take their trips?

## Tools and Technologies Used

- **MySQL**: For data cleaning, querying, and analysis.
- **Excel**: For initial data preparation and formatting.
- **R**: For advanced data analysis and visualization.
- **Power BI**: For creating interactive dashboards and visualizations.

## Key Insights

- **Ride Duration**: Casual riders have longer average ride durations compared to annual members, suggesting leisure or exploratory usage.
- **Bike Type Preference**: Classic bikes are the most popular choice for both casual and annual riders.
- **Day of the Week**: Casual riders predominantly ride on weekends, while annual members show higher activity on weekdays.
- **Peak Times**: Casual riders prefer afternoons and evenings for their trips.
- **Popular Stations**: The most common starting and ending stations for casual riders are:
    - Start: `Streeter Dr & Grand Ave`
    - End: `Streeter Dr & Grand Ave`
- **Seasonality**: Casual rides peak during spring-summer months, indicating a seasonal trend.

## Project Overview

This portfolio project demonstrates the end-to-end data analysis process, from data extraction to actionable insights. It leverages tools like SQL, R, Excel, and Power BI to provide a comprehensive understanding of Cyclistic’s bike-sharing program.

## Folder Structure

The project is organized as follows:

- `README.md`: Project overview and documentation.
- `Data/`: Contains raw and cleaned datasets.
- `Analysis/`: Scripts and queries for data cleaning, exploratory analysis, and visualization.
    - `Analysis/sql/`: SQL scripts for data extraction and analysis.
    - `Analysis/R/`: R scripts for advanced analysis and visualization.
- `Images/`: Contains visual assets such as Power BI dashboards.
- `Power BI/`: Notes and files related to Power BI dashboards.
- `Excel/`: Notes and files related to Excel-based analysis.

## Future Work

- **Predictive Analysis**: Use machine learning models to predict the likelihood of casual riders converting to annual members.
- **Enhanced Visualizations**: Develop more interactive dashboards in Tableau to better communicate insights.
- **Geospatial Analysis**: Explore geographic trends in bike usage to identify underserved areas or potential expansion opportunities.

## Conclusion

This analysis provides valuable insights into Cyclistic’s bike-sharing business, highlighting key differences between casual and annual riders. These findings can help the marketing team design effective strategies to convert casual riders into loyal annual members, driving growth and sustainability for the business. 
