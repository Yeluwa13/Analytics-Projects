-- Customer profile for different brands and models

select 
    customer_age_group,
    customer_gender,
    mobile_brand,
    mobile_model,
    sum(units_sold) as total_sales
from sales
group by 
    customer_age_group,
    customer_gender,
    mobile_brand,
    mobile_model
order by 
    mobile_model, 
    total_sales desc