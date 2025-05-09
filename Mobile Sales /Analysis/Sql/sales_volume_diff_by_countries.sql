-- Differences in sales volume between countries across different brands and models

select 
    country,
    mobile_brand,
    mobile_model,
    sum(units_sold) as total_sales
from sales
group by 
    country, 
    mobile_brand,
    mobile_model
order by 
    mobile_model,
    total_sales desc;