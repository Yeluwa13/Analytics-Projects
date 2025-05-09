-- Differences in pricing between countries across different brands and models

select 
    country,
    mobile_brand,
    mobile_model,
    round(avg(price),0) as avg_price
from sales
group by country, 
    mobile_brand,
    mobile_model
order by 
    mobile_model, 
    avg_price desc
